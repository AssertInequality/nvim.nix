{ config, nixvim, pkgs, stdenv, withCcls ? false, ... }:
let
  nixvim' = nixvim.legacyPackages.${stdenv.hostPlatform.system};
  module =
    if withCcls then
      [
        config
        { plugins.lsp.servers.ccls.enable = true; }
      ]
    else
      config;
in
nixvim'.makeNixvimWithModule {
  inherit pkgs module;
}
