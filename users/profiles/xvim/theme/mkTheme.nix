{ name, pkg }: { enable ? false }: name: { pkgs, lib, ...}: {
  xvim.${name}.base = {
    plugins = [ pkgs.vimPlugins.${pkg} ];
    configs = lib.optional enable [ "colorscheme ${name}" ];
  };
}