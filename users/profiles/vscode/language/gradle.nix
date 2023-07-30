{ pkgs, ... }: {
  programs.vscode = {
    extensions = [pkgs.vscode-extensions.vscjava.vscode-gradle];
  };
}
