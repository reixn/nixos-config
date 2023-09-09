{ config, pkgs, ... }: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.teabyii.ayu ];
    userSettings = {
      "workbench.preferredDarkColorTheme" = "Ayu Mirage Bordered";
      "workbench.preferredLightColorTheme" = "Ayu Light Bordered";
    } // (if config.theme.type == "light" then {
      "workbench.colorTheme" = "Ayu Light Bordered";
    } else if config.theme.type == "dark" then {
      "workbench.colorTheme" = "Ayu Mirage Bordered";
    } else {});
  };
}
