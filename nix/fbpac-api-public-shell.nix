with (import <nixpkgs> {});
let
  env = bundlerEnv {
    name = "fbpac-api-public-bundler-env";
    inherit ruby;
    gemfile  = ./fbpac-api-public-Gemfile;
    lockfile = ./fbpac-api-public-Gemfile.lock;
    gemset   = ./fbpac-api-public-gemset.nix;
  };
in stdenv.mkDerivation {
  name = "fbpac-api-public";
  buildInputs = [ env ];
}
