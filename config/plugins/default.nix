{ pkgs, ... }:
{
  plugins = import ./dev { inherit pkgs; }
    // import ./editor
    // import ./ui;
}
