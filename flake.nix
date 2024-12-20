{
  description = "Personal NixVim Config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    nixvim = {
      url = "github:nix-community/nixvim/nixos-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { nixpkgs
    , nixvim
    , flake-utils
    , ...
    }:
    let
      config = import ./config; # import the module directly
    in
    flake-utils.lib.eachDefaultSystem (system:
    let
      nixvimLib = nixvim.lib.${system};
      pkgs = import nixpkgs {
        inherit system;
        config = { allowUnfree = true; };
      };
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
      };
    });
}
