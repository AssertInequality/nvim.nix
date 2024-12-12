{
  treesitter = {
    enable = true;
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
    indent = true;
    nixvimInjections = true;
  };
}
