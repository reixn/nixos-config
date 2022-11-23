{ pkgs, ... }: {
  programs.vscode = {
    extensions = [
      pkgs.vscode-extensions.streetsidesoftware.code-spell-checker
    ];
  };
}