name: {pkgs, ...}: {
  xvim.${name} = {
    base.plugins = [ pkgs.vimPlugins.vim-polyglot ];
    coc = {
      extensions = [ pkgs.vimPlugins.coc-fsharp ];
    };
  };
}