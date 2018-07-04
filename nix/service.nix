{ config, lib, pkgs, ... }:

with lib;
let

  cfg = config.services.facebook-political-ads;
  baseDir = "/var/lib/facebook-political-ads";
  facebook-political-ads = (import ./release.nix {}).packages.backend {};
  fbpac-api-public = null;
  testPassword = "password";

  databaseUrl = "postgresql://${cfg.dbUser}:${cfg.dbPassword}@${cfg.dbHost}:${builtins.toString cfg.dbPort}/${cfg.dbName}";

  # databaseUrl = "postgresql://${cfg.dbUser}@${cfg.dbHost}:${builtins.toString cfg.dbPort}/${cfg.dbName}";
  dbInitialScript = pkgs.writeText "fbpac-initialScript" ''
    create user ${cfg.dbUser} LOGIN PASSWORD '${cfg.dbPassword}';
    # create user ${cfg.dbUser} LOGIN;
    create database ${cfg.dbName} with owner ${cfg.dbUser};
    create database hello with owner ${cfg.dbUser};
  '';

  # TODO
  # testDatabaseUrl =
  #   "postgresql://${cfg.dbTestUser)@${cfg.dbTestHost):${cfg.dbTestPort}/${cfg.dbTestName}"

  testDatabaseUrl = databaseUrl;

  fpaEnv =
    { DATABASE_URL = databaseUrl;
      TEST_DATABASE_URL = testDatabaseUrl;
      HOST = "${cfg.host}:${builtins.toString cfg.port}";
      RUST_LOG = "info"; # TODO make configurable;
      ADMIN_PASSWORD = testPassword;
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
      default = "fbpac";
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
      default = "facebook_ads";
      description = ''
        Database name
      '';
    };

    dbPassword = mkOption {
      type = types.str;
      default = "password";
      description = ''
        Database password
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
    services.postgresql.initialScript = dbInitialScript;

    users.extraUsers.fbpac =
      { description = "facebook-political-ads user";
        createHome = true;
        home = baseDir;
        useDefaultShell = true;
      };

    services.postgresql.authentication = optionalString cfg.localDatabase
      ''
        local ${cfg.dbName} ${cfg.dbUser} ident
        local ${cfg.dbName} root ident
      '';

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
            User = "fbpac";
            Restart = "always";
          };
      };
  };       

}