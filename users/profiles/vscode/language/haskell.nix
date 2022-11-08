{pkgs, ...}: {
  programs.vscode = {
    extensions = with pkgs.vscode-extensions; [
      haskell.haskell
      justusadam.language-haskell
    ];
    userSettings = {
      "haskell.serverExecutablePath" = "${pkgs.haskell-language-server.outPath}/bin/haskell-language-server-wrapper";
    };
  };
}
