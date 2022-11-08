name: {pkgs, ...}: {
  xvim.${name} = {
    base = {
      plugins = [ pkgs.vimPlugins.dhall-vim ];
      extraPackages = [ pkgs.dhall-lsp-server ];
    };
    coc.config = {
      languageserver.dhall = {
        command = "dhall-lsp-server";
        filetypes = [ "dhall" ];
      };
    };
  };
}