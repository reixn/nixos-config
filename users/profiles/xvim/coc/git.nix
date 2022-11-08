name: {pkgs, ...}: {
  xvim.${name}.coc.extensions = [ pkgs.vimPlugins.coc-git ];
}