{
  mini = {
    enable = true;
    modules = {
      pairs = { };
      comment = {
        options = {
          custom_commentstring.__raw = ''function()
              return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
              end,'';
        };
      };
      surround = {
        add = "gza";
        delete = "gzd";
        find = "gzf";
        find_left = "gzF";
        highlight = "gzh";
        replace = "gzr";
        update_n_lines = "gzn";
      };
      ai = {
        n_lines = 500;
        custom_textobjects = {
          o = ''ai.gen_spec.treesitter({
                a = { "@block.outer", "@conditional.outer", "@loop.outer" },
                i = { "@block.inner", "@conditional.inner", "@loop.inner" },
                }, {}),'';
          f = ''ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }, {}),'';
          c = ''ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }, {}),'';
        };
      };
    };
  };
}
