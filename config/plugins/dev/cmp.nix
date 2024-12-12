{
  cmp = {
    enable = true;
    settings = {
      mapping = {
        "<C-n>" = "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert })";
        "<C-p>" = "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert })";
        "<C-b>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.abort()";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<S-CR>" = ''cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Replace,
              select = true,
              })'';
      };
      sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "path"; }
        { name = "buffer"; }
      ];
      snippet.expand = ''
        function(args)
        require('luasnip').lsp_expand(args.body)
        end
      '';
    };
  };

  cmp-nvim-lsp.enable = true;
  cmp-buffer.enable = true;
  cmp-path.enable = true;
  cmp_luasnip.enable = true;
  cmp-latex-symbols.enable = true;
}
