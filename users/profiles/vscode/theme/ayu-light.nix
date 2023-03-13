{ pkgs, ... }: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.teabyii.ayu ];
    userSettings = {
      "workbench.colorTheme" = "Ayu Light";
    };
  };
}