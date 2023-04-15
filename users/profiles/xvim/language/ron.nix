name: {pkgs, ...}: {
  xvim.${name}.base = {
    plugins = [pkgs.vimPlugins.ron-vim];
  };
}