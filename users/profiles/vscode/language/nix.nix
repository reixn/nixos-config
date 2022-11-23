{ pkgs, ...}: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.bbenoist.nix ];
    userSettings = {
      "cSpell.enableFiletypes" = [ "nix" ];
    };
  };
}