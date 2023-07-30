{ pkgs, ... }: {
  programs.vscode = {
    extensions = [pkgs.vscode-extensions.ocamllabs.ocaml-platform];
  };
}
