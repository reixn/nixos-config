name: {pkgs, ...}: {
  xvim.${name} = {
    base = {
      plugins = [ pkgs.vimPlugins.vim-lsp-cxx-highlight ];
      extraPackages = [ pkgs.clang-tools ];
    };
    coc = {
      extensions = [ pkgs.vimPlugins.coc-clangd ];
      config = {
        "clangd.semanticHighlighting" = true;
      };
    };
  };
}