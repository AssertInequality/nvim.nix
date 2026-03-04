{
  otter = {
    enable = true;
    autoLoad = true;
    settings = {
      buffers = {
        set_filetype = true;
        ignore_pattern = {
          bash.__raw = ''
            "([\'\']?[$][{].*[}])"
          '';
        };
      };
      extensions = {
        txt = "txt";
      };
      handle_leading_whitespace = true;
    };
  };
}
