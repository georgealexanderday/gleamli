{
  description = "Description for the project";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { config, self', inputs', pkgs, system, ... }: {
        # todo
        packages.default = pkgs.hello;

        devShells.default = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            gleam
            erlang
            rebar3
            esbuild
          ];
        };
      };
    };
}
