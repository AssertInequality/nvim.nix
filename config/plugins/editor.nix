{
    plugins = {

      harpoon = {
          enable = true;
      };

      telescope = {
          enable = true;
          keymaps = {
            "<leader>pf" = {
              action = "find_files";
              desc = "find files";
            };
            "<C-p>" = {
              action = "git_files";
              desc = "find files in git";
            };
          };
      };

    };
}
