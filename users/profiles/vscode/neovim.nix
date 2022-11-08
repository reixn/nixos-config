{pkgs, ...}: {
  programs.vscode = {
    extensions = [pkgs.vscode-extensions.asvetliakov.vscode-neovim];
    userSettings = {
      "vscode-neovim.neovimExecutablePaths.linux" = "${pkgs.neovim.outPath}/bin/nvim";
    };
  };
}