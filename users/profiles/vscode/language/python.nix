{ pkgs,... }: {
  programs.vscode = {
    extensions = with pkgs.vscode-extensions; [
      ms-python.python
    ];
    userSettings = {
      "python.formatting.provider" = "black";
      "python.formatting.blackPath" = "${pkgs.black}/bin/black";
    };
  };
}
