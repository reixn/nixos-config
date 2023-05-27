{ pkgs, ...}: {
  programs.vscode = {
    enable = true;
    userSettings = {
      "editor.fontFamily" = "'Cascadia Code', 'Droid Sans Mono', 'monospace', monospace";
      "editor.fontLigatures" = true;
      "editor.formatOnSave" = true;
      "editor.formatOnType" = true;
      "terminal.integrated.cursorStyle" = "line";
    };
  };
}