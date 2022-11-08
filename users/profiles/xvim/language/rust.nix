name: {pkgs, ...}: {
  xvim.${name} = {
    base.extraPackages = [ pkgs.rust-analyzer ];
    coc = {
      extensions = [ pkgs.vimPlugins.coc-rust-analyzer ];
      config = {
        "rust-analyzer.server.path" = "${pkgs.rust-analyzer.outPath}/bin/rust-analyzer";
        "coc.preferences.formatOnSaveFiletypes" = [ "rust" ];
      };
    };
  };
}