name: {pkgs, ...}: {
  xvim.${name}.coc = {
    extensions = [ pkgs.vimPlugins.coc-toml ];
    config = {
      "toml.semanticTokens" = true;
      "coc.preferences.formatOnSaveFiletypes" = [ "toml" ];
    };
  };
}