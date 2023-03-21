{ pkgs, ... }: {
  programs.vscode = {
    extensions = [
      pkgs.vscode-extensions.matklad.rust-analyzer
    ];
    userSettings = {
      "rust-analyzer.server.path" = "${pkgs.rust-analyzer}/bin";
    };
  };
}