{ config, lib, pkgs, ... }:

with lib;
let

  cfg = config.services.facebook-political-ads;
  baseDir = "/var/lib/facebook-political-ads";
  facebook-political-ads = (import ./release.nix {}).packages.backend {};
  fbpac-api-public = null;

  databaseUrl = "postgresql://${cfg.dbUser}@${cfg.dbHost}:${builtins.toString cfg.dbPort}/${cfg.dbName}";

  # TODO
  # testDatabaseUrl =
  #   "postgresql://${cfg.dbTestUser)@${cfg.dbTestHost):${cfg.dbTestPort}/${cfg.dbTestName}"

  testDatabaseUrl = databaseUrl;

  fpaEnv =
    { DATABASE_URL = databaseUrl;
      TEST_DATABASE_URL = testDatabaseUrl;
      HOST = "${cfg.host}:${builtins.toString cfg.port}";
      RUST_LOG = "info"; # TODO make configurable;
      ADMIN_PASSWORD = "password";
    };


in {

  options.services.facebook-political-ads = {

    enable = mkOption {
      type = types.bool;
      default = false;
      description = ''
        If enabled facebook-political-ads will run as a systemd service.
      '';
    };

    host = mkOption {
      type = types.str;
      default = "0.0.0.0";
      description = ''
        Host for server to listen on
      '';
    };

    port = mkOption {
      type = types.int;
      default = 8080;
      description = ''
        Server port
      '';
    };

    dbUser = mkOption {
      type = types.str;
      default = "fbp";
      description = ''
        Database username
      '';
    };

    dbHost = mkOption {
      type = types.str;
      default = "localhost";
      description = ''
        Database host
      '';
    };

    dbPort = mkOption {
      type = types.int;
      default = 5432;
      description = ''
        Database port
      '';
    };

    dbName = mkOption {
      type = types.str;
      default = "fbp";
      description = ''
        Database name
      '';
    };

    localDatabase = mkOption {
      type = types.bool;
      default = false;
      description = ''
        Run database service locally
      '';
    };

  }; # /options

  config = mkIf cfg.enable {
    services.postgresql.enable = cfg.localDatabase;
    environment.systemPackages = [ facebook-political-ads
                                   # fbpac-api-public
                                 ];
    systemd.services.facebook-political-ads =
      { wantedBy = [ "multi-user.target" ];
        requires = optional cfg.localDatabase "postgresql.service";
        after = optional cfg.localDatabase "postgresql.service";
        environment = fpaEnv;
        serviceConfig =
          { ExecStart = "${facebook-political-ads}/bin/server";
            User = "root";
            Restart = "always";
          };
      };
  };       

}