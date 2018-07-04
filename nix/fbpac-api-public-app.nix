{ lib, bundlerApp }:

bundlerApp {
  pname = "fbpac-api-public";
  gemdir = ./.;
  exes = 