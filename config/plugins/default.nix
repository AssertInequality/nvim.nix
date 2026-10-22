{ pkgs, config, ... }:
{
  plugins = import ./dev { inherit pkgs config; }
    // import ./editor
    // import ./ui;
}
