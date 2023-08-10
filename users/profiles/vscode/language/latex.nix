{ pkgs, ... }: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.james-yu.latex-workshop ];
  };
}
