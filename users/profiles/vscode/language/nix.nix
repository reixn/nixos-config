{ pkgs, ...}: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.bbenoist.nix ];
  };
}