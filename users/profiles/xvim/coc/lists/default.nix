name: {pkgs, ...}: {
  xvim.${name} = {
    base.configs = [ (builtins.readFile ./coc-lists.vim) ];

    coc.extensions = [ pkgs.vimPlugins.coc-lists ];
  };
}