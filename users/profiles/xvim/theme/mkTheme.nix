{ name, pkg }: { enable ? false }: name: { pkgs, lib, ...}: {
  xvim.${name}.base = {
    plugins = [ pkgs.vimPlugins.${pkg} ];
    configs = lib.optional enable [ 
      ''
        if exists('g:vscode')
        else
          colorscheme ${name}
        end
      ''
    ];
  };
}