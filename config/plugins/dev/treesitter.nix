{
  treesitter = {
    enable = true;
    settings = {
      ensureInstalled = [
        "vimdoc"
        "nix"
        "lua"
        "vim"
        "javascript"
        "typescript"
        "c"
        "regex"
        "bash"
        "markdown"
        "markdown_inline"
      ];
      indent.enable = true;
      nixvimInjections = true;
    };
  };
}
