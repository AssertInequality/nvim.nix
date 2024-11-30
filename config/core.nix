{

  config = {

    keymaps = [
      # Editor Operations
      {
        mode = [ "n" ];
        key = "<leader>qq";
        action = "<cmd>qa<CR>";
        options.desc = "Quit All";
      }
      {
        mode = [ "n" ];
        key = "<leader>qa";
        action = "<cmd>qa!<CR>";
        options.desc = "Abort and Quit";
      }
      {
        mode = [ "n" ];
        key = "<leader>qs";
        action = "<cmd>wqa<CR>";
        options.desc = "Save All and Quit";
      }
      # File Operations
      {
        mode = [ "n" ];
        key = "<leader>ff";
        action.__raw = "vim.lsp.buf.format";
        options.desc = "Format";
      }
      {
        mode = [ "n" ];
        key = "<leader>fs";
        options.desc = "Save";
        action = "<cmd>w<CR>";
      }
      # Buffer Operations
      {
        mode = [ "n" ];
        key = "<leader>bc";
        options.desc = "Close Buffer";
        action = "<cmd>bd<CR>";
      }
      {
        mode = [ "n" ];
        key = "<leader>bn";
        options.desc = "Next Buffer";
        action = "<cmd>bn<CR>";
      }
      {
        mode = [ "n" ];
        key = "<leader>bp";
        options.desc = "Previous Buffer";
        action = "<cmd>bp<CR>";
      }
      # Cursor Movement
      {
        mode = [ "n" ];
        key = "J";
        action = "mzJ`z";
      }
      {
        mode = [ "n" ];
        key = "<C-d>";
        action = "<C-d>zz";
      }
      {
        mode = [ "n" ];
        key = "<C-u>";
        action = "<C-u>zz";
      }
      {
        mode = [ "n" ];
        key = "n";
        action = "nzzzv";
      }
      {
        mode = [ "n" ];
        key = "N";
        action = "Nzzzv";
      }
      # Quickfix Navigation
      {
        mode = [ "n" ];
        key = "<C-S-q>";
        action = "<cmd>cclose<CR>zz";
      }
      {
        mode = [ "n" ];
        key = "<C-j>";
        action = "<cmd>cnext<CR>zz";
      }
      {
        mode = [ "n" ];
        key = "<C-k>";
        action = "<cmd>cprev<CR>zz";
      }
      {
        mode = [ "n" ];
        key = "<C-S-j>";
        action = "<cmd>lnext<CR>zz";
      }
      {
        mode = [ "n" ];
        key = "<C-S-k>";
        action = "<cmd>lprev<CR>zz";
      }
      # PLUGIN : Fugitive
      {
        mode = [ "n" ];
        key = "<leader>gs";
        action = "<cmd>G<CR>";
        options.desc = "Status";
      }
      # PLUGIN : Telescope
      {
        mode = [ "n" ];
        key = "<leader>ps";
        action.__raw = ''
          function()
          require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") });
          end'';
        options.desc = "Grep String";
      }
      # PLUGIN : Unfotree
      {
        mode = [ "n" ];
        key = "<leader>u";
        action = "<cmd>UndotreeToggle<CR>";
        options.desc = "Undotree Toggle";
      }
      # PLUGIN : Oil
      {
        mode = [ "n" ];
        key = "-";
        action = "<cmd>Oil<CR>";
        options.desc = "File Browser";
      }
      # PLUGIN : LazyGit
      {
        mode = [ "n" ];
        key = "<leader>gl";
        action = "<cmd>LazyGit<CR>";
        options.desc = "LazyGit";
      }
      ## VISUAL: Move lines up and down
      {
        mode = [ "v" ];
        key = "J";
        action = "<cmd>m '>+1<CR>gv=gv";
      }
      {
        mode = [ "v" ];
        key = "K";
        action = "<cmd>m '<-2<CR>gv=gv";
      }
    ];

    globals = {
      mapleader = " ";
      maplocalleader = "\\";
      markdown_recommended_style = 0;
      netrw_browse_split = 0;
      netrw_banner = 0;
      netrw_winsize = 25;
    };

    opts = {
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
      relativenumber = true;
      pumblend = 10;
      pumheight = 10;
      scrolloff = 8;
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
      softtabstop = 2;
      termguicolors = true;
      timeoutlen = 300;
      updatetime = 200;
      wildmode = "longest:full,full";
      winminwidth = 5;
      splitkeep = "screen";
      wrap = false;
      swapfile = false;
      backup = false;
      undodir.__raw = ''os.getenv("HOME") .. "/.vim/undodir"'';
      undofile = true;
      undolevels = 10000;
      hlsearch = false;
      incsearch = true;
      colorcolumn = "80";
      arabic = false;
      arabicshape = false;
    };

    colorschemes.nord = {
      enable = true;
      settings = {
        borders = true;
        disable_background = true;
        italic = true;
      };
    };

    clipboard = {
      register = "unnamedplus";
      providers.xclip.enable = true;
    };

  };
}
