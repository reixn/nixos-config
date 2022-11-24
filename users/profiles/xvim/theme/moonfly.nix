{ enable ? false }: name: {pkgs, lib, ...}: {
  xvim.${name}.base = {
    plugins = [ pkgs.vimPlugins.vim-moonfly-colors ];
    configs = builtins.filter (v: v != "") [
      "let g:moonflyTransparent = 1"
      (lib.optionalString enable 
        ''
          if exists('g:vscode')
          else
            colorscheme moonfly
          end
        '')
    ];
  };
}