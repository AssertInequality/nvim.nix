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


	};
}
