{ config }:
{
  treesitter = {
    enable = true;

    # Only parsers not bundled with Neovim 0.12 core
    # (c, lua, markdown, markdown_inline, query, vim, vimdoc ship with nvim)
    grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
      bash
      javascript
      nix
      regex
      typescript
    ];

    highlight.enable = true;
    indent.enable = true;
    folding.enable = true;

    nixvimInjections = false;
  };
}
