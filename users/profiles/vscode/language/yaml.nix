{ pkgs, ... }: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.redhat.vscode-yaml ];
  };
}