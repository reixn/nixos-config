name: {pkgs, ...}: {
  xvim.${name}.coc = {
    extensions = [ pkgs.vimPlugins.coc-json ];
    config = {
      "json.format.enable" = true;
      "coc.preferences.formatOnSaveFiletypes" = [ "json"  "jsonc" ];
    };
  };
}