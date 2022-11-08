name: {pkgs, ...}: {
  xvim.${name}.coc = {
    extensions = [ pkgs.vimPlugins.coc-xml ];
    config = {
      "xml.java.home" = "${pkgs.openjdk_headless}/lib/openjdk";
      "coc.preferences.formatOnSaveFiletypes" = [ "xml" ];
    };
  };
}