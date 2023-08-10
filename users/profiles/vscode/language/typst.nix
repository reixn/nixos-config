{ pkgs, ... }: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.nvarner.typst-lsp ];
    userSettings = {
      "typst-lsp.serverPath" = "${pkgs.typst-lsp}/bin/typst-lsp";
    };
  };
}
