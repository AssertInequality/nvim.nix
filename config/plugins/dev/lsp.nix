{ pkgs, ... }:
{
  lsp = {
    enable = true;
    keymaps = {
      diagnostic = {
        "<leader>cf" = {
          action = "open_float";
          desc = "Open Error Float";
        };
        "[d" = "goto_prev";
        "]d" = "goto_next";
      };
      lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "K" = "hover";
        "<leader>cs" = {
          action = "workspace_symbol";
          desc = "Symbol";
        };
        "<leader>ca" = {
          action = "code_action";
          desc = "Action";
        };
        "<leader>cr" = {
          action = "rename";
          desc = "Rename";
        };
        "<leader>ch" = {
          action = "signature_help";
          desc = "Signature Help";
        };
      };
    };
    servers = {
      nixd = {
        enable = true;
        settings = {
          formatting.command = [ "nixpkgs-fmt" ];
          nixpkgs.expr = "import <nixpkgs> {}";
        };
      };
      lua_ls.enable = true;
      ts_ls.enable = true;
      pylsp.enable = true;
      bashls.enable = true;
    };
  };
}
