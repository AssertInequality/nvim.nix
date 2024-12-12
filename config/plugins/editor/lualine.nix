{
  lualine = {
    enable = true;
    globalstatus = true;
    sections = {
      lualine_a = [
        {
          name = "mode";
          separator = { left = ""; };
          padding = {
            right = 2;
            left = 1;
          };
        }
      ];
      lualine_b = [ "filename" ];
      lualine_c = [
        {
          name = "buffers";
        }
      ];
      lualine_x = [
        "diagnostics"
        "diff"
        "branch"
      ];
      lualine_y = [ "filetype" "progress" ];
      lualine_z = [
        {
          name = "location";
          separator = { right = ""; };
          padding = {
            right = 1;
            left = 2;
          };
        }
      ];
    };
    # { { 'mode', separator = { left = '' }, right_padding = 2 } }
    inactiveSections = {
      lualine_a = [ "" ];
      lualine_b = [ "" ];
      lualine_c = [ "filename" ];
      lualine_x = [ "location" ];
      lualine_y = [ "" ];
      lualine_z = [ "" ];
    };
    sectionSeparators = { left = ""; right = ""; };
    componentSeparators = { left = ""; right = ""; };
  };
}
