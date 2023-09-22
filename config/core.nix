{

  config = {

    maps = {
      normal = {
        "<leader>f".desc = "File";
        "<leader>ff" = {
          desc = "Format";
          action = "vim.lsp.buf.format";
          lua = true;
        };
        "<leader>fs" = {
          desc = "Save";
          action = "<cmd>w<CR>";
        };

        "<leader>p".desc = "Project";
        "<leader>pv" = {
          action = "<cmd>Ex<CR>";
          desc = "NetRW";
        };

        ### Cursor Control
        "J" = "mzJ`z";
        "<C-d>" = "<C-d>zz";
        "<C-u>" = "<C-u>zz";
        "n" = "nzzzv";
        "N" = "Nzzzv";

        ### Tmux Sessionizer
        "<leader>po" = {
          action = "<cmd>silent !tmux neww tmux-sessionizer<CR>";
          desc = "Open Project";
        };

        ### Quickfix Navigation
        "<C-k>" = "<cmd>cnext<CR>zz";
        "<C-j>" = "<cmd>cprev<CR>zz";
        "<C-S-k>" = "<cmd>lnext<CR>zz";
        "<C-S-j>" = "<cmd>lprev<CR>zz";

        ### PLUGIN : Fugitive
        "<leader>g".desc = "Git";
        "<leader>gs" = {
          action = "<cmd>G<CR>";
          desc = "Status";
        };


        ### PLUGIN : Harpoon
        "<leader>h".desc = "Harpoon";
        "<leader>ha".desc = "Add File";
        "<leader>hq".desc = "Quick Menu";
        "<leader>hn".desc = "Next File";
        "<leader>hp".desc = "Previous File";

        ### PLUGIN : Telescope
        "<leader>ps" = {
          action = ''
          function()
            require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") });
          end
          '';
          desc = "Grep String";
          lua = true;
        };

        ### PLUGIN : Unfotree
        "<leader>u" = {
          action = "<cmd>UndotreeToggle<CR>";
          desc = "Undotree Toggle";
        };
      };

      visual = {
        ### Moving lines up and down
        "J" = "<cmd>m '>+1<CR>gv=gv";
        "K" = "<cmd>m '<-2<CR>gv=gv";
      };

    };

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
