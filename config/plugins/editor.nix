{
  plugins = {

    undotree = {
      enable = true;
      focusOnToggle = true;
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
      keymaps = {
        "<leader>pf" = {
          action = "find_files";
          desc = "find files";
        };
        "<leader>bl" = {
          action = "buffers";
          desc = "list open buffers";
        };
        "<C-p>" = {
          action = "git_files";
          desc = "find files in git";
        };
      };
    };

  };
}
