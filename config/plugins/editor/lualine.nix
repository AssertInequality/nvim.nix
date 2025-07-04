let

  colors = {
    nord1 = "#3B4252";
    nord3 = "#4C566A";
    nord5 = "#E5E9F0";
    nord6 = "#ECEFF4";
    nord7 = "#8FBCBB";
    nord8 = "#88C0D0";
    nord13 = "#EBCB8B";
  };

  nordCustom = {
    normal = {
      a = { fg = colors.nord1; bg = colors.nord8; gui = "bold"; };
      b = { fg = colors.nord5; bg = colors.nord3; };
      c = { fg = colors.nord5; bg = ""; };
    };
    insert = { a = { fg = colors.nord1; bg = colors.nord6; gui = "bold"; }; };
    visual = { a = { fg = colors.nord1; bg = colors.nord7; gui = "bold"; }; };
    replace = { a = { fg = colors.nord1; bg = colors.nord13; gui = "bold"; }; };
    inactive = {
      a = { fg = colors.nord1; bg = colors.nord8; gui = "bold"; };
      b = { fg = colors.nord5; bg = colors.nord1; };
      c = { fg = colors.nord5; bg = colors.nord1; };
    };
  };

in
{
  lualine = {
    enable = true;
    settings = {
      options = {
        theme = nordCustom;
        globalstatus = true;
        section_separators = { left = ""; right = ""; };
        component_separators = { left = "|"; right = "|"; };
      };
      sections = {
        lualine_a = [
          {
            __unkeyed-1 = "mode";
            separator = { left = ""; };
            padding = {
              right = 1;
              left = 1;
            };
          }
        ];
        lualine_b = [{
          __unkeyed-1 = "filename";
          separator = { right = ""; };
          padding = {
            right = 1;
            left = 1;
          };
        }];
        lualine_c = [ "" ];
        lualine_x = [
          "diagnostics"
          "diff"
          "branch"
        ];
        lualine_y = [ "filetype" ];
        lualine_z = [
          "progress"
          {
            __unkeyed-1 = "location";
            separator = { right = ""; };
            padding = {
              right = 1;
              left = 1;
            };
          }
        ];
      };
      inactiveSections = {
        lualine_a = [ "" ];
        lualine_b = [ "" ];
        lualine_c = [ "filename" ];
        lualine_x = [ "location" ];
        lualine_y = [ "" ];
        lualine_z = [ "" ];
      };
    };
  };
}
