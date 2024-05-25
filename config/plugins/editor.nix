{
  plugins = {

    nvim-colorizer.enable = true;

    undotree = {
      enable = true;
      settings.FocusOnToggle = true;
    };

    harpoon = {
      enable = true;
      keymaps ={
        addFile = "<leader>ha";
        toggleQuickMenu = "<leader>hq";
        navNext = "<leader>hn";
        navPrev = "<leader>hp";
      };
    };

    telescope = {
      enable = true;
      settings.defaults = {
        "file_ignore_patterns".__raw = ''{"node_modules"}'';
        "initial_mode" = "normal";
      };
      keymaps = {
        "<leader>pf" = {
          action = "find_files";
          options.desc = "find files";
        };
        "<leader>bl" = {
          action = "buffers";
          options.desc = "list open buffers";
        };
        "<C-p>" = {
          action = "git_files";
          options.desc = "find files in git";
        };
      };
    };

    oil = {
      enable = true;
      settings = {
        constrain_cursor = "editable";
        default_file_explorer = true;
        columns = [
          "type"
          "size"
          "permissions"
          "icon"
        ];
      };
    };

  };
}
