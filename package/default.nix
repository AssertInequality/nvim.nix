{ config, nixvim, pkgs, stdenv, ... }:
let
  nixvim' = nixvim.legacyPackages.${stdenv.hostPlatform.system};
in
nixvim'.makeNixvimWithModule {
  inherit pkgs;
  module = config;
}
