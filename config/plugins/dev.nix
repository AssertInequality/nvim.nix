{
	plugins = {

		treesitter = {
			enable = true;
			ensureInstalled = [
				"nix"
					"lua"
			];
			folding = true;
			indent = true;
			nixvimInjections = true;
		};

		luasnip.enable = true;

		lsp = {
			enable = true;
			servers = {
				nil_ls = {
					enable = true;
				};
				lua-ls = {
					enable = true;
				};
				tsserver = {
					enable = true;
				};
			};
		};

		nvim-cmp = {
			enable = true;
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
			{ name = "buffer"; }
			{ name = "path"; }
			];
		};

		cmp-nvim-lsp.enable = true;
		cmp-buffer.enable = true;
		cmp-path.enable = true;
		cmp_luasnip.enable = true;

		ts-context-commentstring.enable = true;

		mini = {
			enable = true;
			modules = {
				pairs = { };
				comment = { };
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


	};
}
