{
  plugins = {

    lightline = {
      enable = true;
      colorscheme = "nord";
    };

    which-key = {
      enable = true;
      registrations = {
        "<leader>f" = "File";
        "<leader>p" = "Project";
        "<leader>b" = "Buffer";
        "<leader>c" = "Code";
        "<leader>g" = "Git";
        "<leader>h" = "Harpoon";
        "<leader>ha" = "Add File";
        "<leader>hq" = "Quick Menu";
        "<leader>hn" = "Next File";
        "<leader>hp" = "Previous File";
      };
    };

  };
}
