{ pkgs, ... }: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.ms-vscode.powershell ];
    userSettings = {
      "powershell.powerShellAdditionalExePaths" = {
        "system" = "${pkgs.powershell}/bin/pwsh";
      };
    };
  };
}