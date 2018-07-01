let defaultNixpkgs = <nixpkgs>; # TODO: Pin nixpkgs
in
{ pkgs ? import defaultNixpkgs {} }:

rec {

  packages = {
    # backend = (pkgs.callPackage (import ./server.nix)).server_0_1_0;
    backend = (import ./server.nix).server_0_1_0;
    tools   = (import ./server.nix).tools_0_1_0;
  };


  shells = {
  };

}
