{ pkgs, ... }: {
  programs.vscode = {
    extensions = [pkgs.vscode-extensions.fwcd.kotlin];
    userSettings = {
      "kotlin.languageServer.path" = "${pkgs.kotlin-language-server}/bin/kotlin-language-server";
      "kotlin.debugAdapter.path" = "${pkgs.kotlin-debug-adapter}/bin/kotlin-debug-adapter";
    };
  };
}
