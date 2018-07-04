# Nix packaging for facebook-political-ads

If you use the [nix](https://nixos.org/nix) package manager, much of the work
of fetching dependencies can be circumvented. This directory also supplies build
instructions for NixOS machines running facebook-political-ads, which can be used
for testing and deployment

## Usage

### Locally build individual components, like the backend or the chrome extension

```bash
[facebook-political-ads]$ nix build -f nix/release.nix packages.backend
[facebook-political-ads]$ export DATABASE_URL=postgresql://fbpac:password@localhost:5432/fbpac
[facebook-political-ads]$ export HOST=0.0.0.0:8080
[facebook-political-ads]$ export ADMIN_PASSWORD=password
[facebook-political-ads]$ result/bin/server
Listening on http://0.0.0.0:8080 with 1 thread.
```

### Provision a local database

