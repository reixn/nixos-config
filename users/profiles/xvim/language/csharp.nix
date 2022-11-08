name: {pkgs, ...}: {
  xvim.${name}.coc = {
    extensions = [ pkgs.vimPlugins.coc-omnisharp ];
    config = {
      "omnisharp.path" = "${pkgs.omnisharp-roslyn}/bin/omnisharp";
      "coc.preferences.formatOnSaveFiletypes" = [ "csharp" "cs" ];
    };
  };
}