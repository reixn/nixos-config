{pkgs, ...}: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.mike-lischke.vscode-antlr4 ];
    userSettings = {
      "antlr4.referencesCodeLens.enabled" = true;
    };
  };
}
