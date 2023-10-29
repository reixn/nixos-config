{ pkgs, ... }: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.eugleo.magic-racket ];
  };
}
