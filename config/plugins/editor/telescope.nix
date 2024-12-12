{
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
}
