let testPassword = "password";

in

import <nixpkgs/nixos/tests/make-test.nix> {
  machine = { config, pkgs, ... }: {
    imports = [ ./service.nix ];

    services.facebook-political-ads = {
      enable = true;
      localDatabase = true;
    };
  };

  testScript = ''
    startAll
    $machine->waitForUnit("postgresql.service");
    $machine->waitForUnit("facebook-political-ads.service");
  '';
}