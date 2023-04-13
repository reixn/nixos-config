{pkgs, ...}: {
  programs.vscode = {
    extensions = [pkgs.vscode-extensions.tamasfe.even-better-toml];
  };
}