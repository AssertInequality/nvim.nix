{
  plugins = {

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

    luasnip.enable = true;

    lsp = {
      enable = true;
      keymaps = {
        diagnostic = {
          "<leader>cf" = "open_float";
          "[d" = "goto_prev";
          "]d" = "goto_next";
        };
        lspBuf = {
          "gd" = "definition";
          "gD" = "references";
          "K" = "hover";
          "<leader>cs" = "workspace_symbol";
          "<leader>ca" = "code_action";
          "<leader>cr" = "rename";
          "<leader>ch" = "signature_help";
        };
      };
      servers = {
        nil_ls = {
          enable = true;
          extraOptions = {
            formatting.__raw = ''{ command = { "nixpkgs-fmt" } }'';
          };
        };
        lua-ls.enable = true;
        tsserver.enable = true;
        texlab.enable = true;
        pylsp.enable = true;
        bashls.enable = true;
      };
    };

    lsp-format = {
      enable = true;
    };

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

    ts-autotag.enable = true;
    ts-context-commentstring.enable = true;

    mini = {
      enable = true;
      modules = {
        pairs = { };
        comment = {
          options = {
            custom_commentstring.__raw = ''function()
              return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
              end,'';
          };
        };
        surround = {
          add = "gza"; 
          delete = "gzd"; 
          find = "gzf"; 
          find_left = "gzF"; 
          highlight = "gzh"; 
          replace = "gzr"; 
          update_n_lines = "gzn";
        };
        ai = {
          n_lines = 500;
          custom_textobjects = {
            o = ''ai.gen_spec.treesitter({
                a = { "@block.outer", "@conditional.outer", "@loop.outer" },
                i = { "@block.inner", "@conditional.inner", "@loop.inner" },
                }, {}),'';
            f = ''ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }, {}),'';
            c = ''ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }, {}),'';
          };
        };
      };
    };

    notify = {
      enable = true;
      stages = "fade";
      timeout = 3000;
      backgroundColour = "#000000";
    };

    lualine = {
      enable = true;
      globalstatus = true;
      sections.lualine_c = ["filename" "buffers"];
    };

    noice.enable = true;
    trouble.enable = true;
    fugitive.enable = true;

    comment = {
      enable = true;
      settings.sticky = true;
    };

    emmet = {
      enable = true;
      settings = {
        mode = "i";
        leader_key = "<C-y>";
      };
    };

  };
}
