{

  config = {


	globals = {
	  mapleader = " ";
	  maplocalleader = "\\";
          markdown_recommended_style = 0;
	};

	options = {
          autowrite = true;
          completeopt = "menu,menuone,noselect";
          conceallevel = 3;
          confirm = true;
          cursorline = true;
          expandtab = true;
          formatoptions = "jcroqlnt";
          grepformat = "%f:%l:%c:%m";
          grepprg = "rg --vimgrep";
          ignorecase = true;
          inccommand = "nosplit";
          laststatus = 0;
          list = true;
          mouse = "a";
          number = true;
          pumblend = 10;
          pumheight = 10;
          relativenumber = true;
          scrolloff = 4;
          sessionoptions.__raw = ''{ "buffers", "curdir", "tabpages", "winsize" }'';
          shiftround = true;
          shiftwidth = 2;
          showmode = false;
          sidescrolloff = 8;
          signcolumn = "yes";
          smartcase = true;
          smartindent = true;
          spelllang.__raw = ''{ "en" }'';
          splitbelow = true;
          splitright = true;
          tabstop = 2;
          termguicolors = true;
          timeoutlen = 300;
          undofile = true;
          undolevels = 10000;
          updatetime = 200;
          wildmode = "longest:full,full";
          winminwidth = 5;
	  splitkeep = "screen";
          wrap = false;
	};

	colorschemes.nord = {
		enable = true;
		borders = true;
		disable_background = true;
		italic = true;
	};

	clipboard = {
		register = "unnamedplus";
		providers.xclip.enable = true;
	};

  };
}
