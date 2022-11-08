name: {pkgs, ...}: {
  xvim.${name}.coc = {
    extensions = [ pkgs.vimPlugins.coc-yaml ];
    config = {
      "yaml.format.enable" = true;
      "coc.preferences.formatOnSaveFiletypes" = [ "yaml" ];
    };
  };
}