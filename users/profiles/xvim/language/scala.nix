name: {pkgs, ...}: {
  xvim.${name}.coc = {
    extensions = [ pkgs.vimPlugins.coc-metals ];
    config = {
      "metals.javaHome" = "${pkgs.openjdk_headless.outPath}/lib/openjdk";
      "metals.statusBarEnabled" = true;
      "coc.preferences.formatOnSaveFiletypes" = [ "scala" ];
    };
  };
}