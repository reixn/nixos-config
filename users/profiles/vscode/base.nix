{ pkgs, ...}: {
  programs.vscode = {
    enable = true;
    extensions = [ pkgs.vscode-extensions.editorconfig.editorconfig ];
    userSettings = {
      "editor.fontFamily" = "'Cascadia Code', 'Droid Sans Mono', 'monospace', monospace";
      "editor.fontLigatures" = true;
      "editor.formatOnSave" = true;
      "editor.formatOnType" = true;
      "terminal.integrated.cursorStyle" = "line";
      "extensions.autoUpdate" = false;
      "window.autoDetectColorScheme" = true;
    };
  };
}
