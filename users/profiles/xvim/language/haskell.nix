name: {pkgs, ...}: {
  xvim.${name} = {
    base = {
      plugins = [ pkgs.vimPlugins.haskell-vim ];
      extraPackages = [ pkgs.haskell-language-server ];
    };
    coc.config = {
      languageserver.haskell = {
        command = "haskell-language-server-wrapper";
        args = [ "--lsp" ]; 
        rootPatterns = [
          "*.cabal"
          "stack.yaml"
          "cabal.project"
          "package.yaml"
          "hie.yaml"
        ]; 
        filetypes = [
          "haskell"
          "lhaskell"
        ];
      };
      "coc.preferences.formatOnSaveFiletypes" = [ "haskell" "lhaskell" ];
    };
  };
}