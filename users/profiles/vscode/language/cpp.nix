{ pkgs, ... }: {
  programs.vscode = {
    extensions = with pkgs.vscode-extensions; [
      llvm-vs-code-extensions.vscode-clangd
      xaver.clang-format
    ];
    userSettings = {
      "clangd.path" = "${pkgs.clang-tools}/bin/clangd";
      "clang-format.executable" = "${pkgs.clang-tools}/bin/clang-format";
    };
  };
}