#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bundix carnix curl npm2nix bundix sqlite postgresql zlib

set -x

# Impurely pull the dependency packages for the backend rust server
carnix ../backend/Cargo.lock -o ./server.nix

# Impurely pull the dependency packages for the browser extension
node2nix -i ../extension/package.json -l ../extension/package-lock.json -6 \
         -o extension.nix

# Impurely clone fbpac-api-public and pull dependency packages
git clone https://github.com/propublica/fbpac-api-public --depth 1
pushd fbpac-api-public
echo "In fbpac-api-public"
bundix --lockfile=Gemfile.lock --gemfile=Gemfile --magic
popd
cp fbpac-api-public/gemset.nix ./fbpac-api-public-gemset.nix
cp fbpac-api-public/Gemfile ./fbpac-api-public-Gemfile
cp fbpac-api-public/Gemfile.lock ./fbpac-api-public-Gemfile.lock
rm -rf fbpac-api-public

