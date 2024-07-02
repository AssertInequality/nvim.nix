{
  description = "Personal NixVim Config";

  inputs = {
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils = {
      url = "github:numtide/flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    nixvim,
    flake-utils,
    ...
  } @ inputs: let
    config = import ./config; # import the module directly
  in
    flake-utils.lib.eachDefaultSystem (system: let
      nixvimLib = nixvim.lib.${system};
      pkgs = import nixpkgs {
        inherit system;
        config = { allowUnfree = true; };
      };
      nixvim' = nixvim.legacyPackages.${system};
      nvim = nixvim'.makeNixvimWithModule {
        inherit pkgs;
        module = config;
      };
    in {
      nixosModules = {
        nixVimModule ={pkgs}: {
          environment.systemPackages = [(
            nixvim'.makeNixvimWithModule {
              inherit pkgs;
              module = config;
            }
          )];
        };
      };

      checks = {
        # Run `nix flake check .` to verify that your config is not broken
        default = nixvimLib.check.mkTestDerivationFromNvim {
          inherit nvim;
          specialArgs = nixvimLib;
          name = "Personal NixVim Config";
        };
      };

      packages = {
        # Lets you run `nix run .` to start nixvim
        default = nvim;
      };
    });
}
