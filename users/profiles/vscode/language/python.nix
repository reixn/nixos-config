{ pkgs,... }: {
  programs.vscode = {
    extensions = with pkgs.vscode-extensions; [
      ms-python.python
    ];
    userSettings = {
      "python.formatting.provider" = "yapf";
      "python.formatting.yapfPath" = "${pkgs.yapf}/bin/yapf";
    };
  };
}