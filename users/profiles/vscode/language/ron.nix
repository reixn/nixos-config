{ pkgs, ...}: {
  programs.vscode = {
    extensions = [pkgs.vscode-extensions.a5huynh.vscode-ron];
  };
}