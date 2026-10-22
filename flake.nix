{
  description = "Personal NixVim Config";

  inputs = {
    shared.url = "git+https://codeberg.org/LanKraft/nix-shared-modules";
    nixpkgs.follows = "shared/nixpkgs";
    nixvim.url = "github:nix-community/nixvim/nixos-26.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { nixpkgs
    , nixvim
    , flake-utils
    , ...
    }:
    flake-utils.lib.eachDefaultSystem (system:
    let
      nixvimLib = nixvim.lib.${system};
      pkgs = import nixpkgs {
        inherit system;
        config = { allowUnfree = true; };
      };
      config = import ./config { inherit pkgs; }; # import the module directly
    in
    {
      nixosModules = {
        nixVimModule = { pkgs, ... }: {
          environment.systemPackages = [
            (
              pkgs.callPackage ./package { inherit nixvim config; }
            )
          ];
        };
        nixVimModuleCcls = { pkgs, ... }: {
          environment.systemPackages = [
            (
              pkgs.callPackage ./package { inherit nixvim config; withCcls = true; }
            )
          ];
        };
      };

      checks = {
        # Run `nix flake check .` to verify that your config is not broken
        default = nixvimLib.check.mkTestDerivationFromNvim {
          nvim = pkgs.callPackage ./package { inherit nixvim pkgs system config; };
          specialArgs = nixvimLib;
          name = "Personal NixVim Config";
        };
      };

      packages = {
        # Lets you run `nix run .` to start nixvim
        default = pkgs.callPackage ./package { inherit nixvim pkgs system config; };
        # Same but with the C/C++ language server (adds ~1.2 GiB)
        ccls = pkgs.callPackage ./package { inherit nixvim pkgs system config; withCcls = true; };
      };
    });
}
