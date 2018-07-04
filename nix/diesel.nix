{ pkgs ? import <nixpkgs> {} }:

with pkgs;

stdenv.mkDerivation {
    name = "rust";
    buildInputs = [
        postgresql
        rust.cargo
        rust.rustc
    ];
    shellHook = ''
        export OPENSSL_DIR="${openssl.dev}"
        export OPENSSL_LIB_DIR="${openssl.out}/lib"
        export PATH="$PWD/bin:$PATH"
        export DATABASE_URL="postgres://postgres@localhost/db"
        if ! type diesel > /dev/null 2> /dev/null; then
          cargo install diesel_cli --no-default-features --features postgres --root $PWD
        fi
        diesel setup
    '';
}
