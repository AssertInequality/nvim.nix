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
      nixvimInjections = false;
      folding.enable = true;
      highlight.enable = true;
      indent.enable = true;
    };
  };
}
