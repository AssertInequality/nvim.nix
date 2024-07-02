{ system, config, nixvim, pkgs, ... }:
let
  nixvim' = nixvim.legacyPackages.${system};
in
nixvim'.makeNixvimWithModule {
  inherit pkgs;
  module = config;
}
