{ pkgs, ... }: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.esbenp.prettier-vscode ];
    userSettings = {
      "editor.defaultFormatter" = "esbenp.prettier-vscode";
    };
  };
}
