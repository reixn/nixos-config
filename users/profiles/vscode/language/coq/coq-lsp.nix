{ inputs, system, pkgs, ...}: let
  exts = inputs.nix-vscode-extensions.extensions.${system};
in {
  programs.vscode = {
    extensions = [ exts.open-vsx.ejgallego.coq-lsp ];
    userSettings = {
      "coq-lsp.path" = "${pkgs.coqPackages.coq-lsp}/bin/coq-lsp";
      "coq-lsp.updateIgnores" = false; # avoid create .vscode dir
    };
  };
}
