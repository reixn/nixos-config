{ pkgs, ...}: {
  programs.vscode = {
    extensions = with pkgs.vscode-extensions; [
      dhall-lang
      dhall.vscode-dhall-lsp-server
    ];
    userSettings = {
      "vscode-dhall-lsp-server.executable" = "${pkgs.dhall-lsp-server.outPath}/bin/dhall-lsp-server";
    };
  };
}