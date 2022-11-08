name: {pkgs, ...}: {
  xvim.${name}.coc = {
    extensions = [ pkgs.vimPlugins.coc-tsserver ];
  };
}