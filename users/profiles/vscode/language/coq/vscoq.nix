{ inputs, system, pkgs, ...}: let
  vscoq_pkg = inputs.vscoq.packages.${system};
  exts = inputs.nix-vscode-extensions.extensions.${system};
in {
  programs.vscode = {
    extensions = [ exts.open-vsx.maximedenes.vscoq ];
    userSettings = {
      "vscoq.path" = "${vscoq_pkg.vscoq-language-server}/bin/vscoqtop";
    };
  };
}
