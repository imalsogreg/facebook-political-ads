let defaultNixpkgs = <nixpkgs>; # TODO: Pin nixpkgs
in
{ pkgs ? import defaultNixpkgs {} }:

rec {

  packages = {
    # backend = (pkgs.callPackage (import ./server.nix)).server_0_1_0;
    backend = (pkgs.callPackage ./server.nix {}).server_0_1_0;
    tools   = (import ./server.nix).tools_0_1_0;
    # diesel  = (import ./server.nix).diesel_1_1_1; 
    extension = pkgs.callPackage ./extension.nix { nodeEnv = pkgs.callPackage ./node-env.nix {}; }; 
  };


  shells = {
  };

}
