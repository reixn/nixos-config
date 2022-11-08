name: {pkgs, ...}: {
  xvim.${name}.base.plugins = [ pkgs.vimPlugins.vim-nix ];
}