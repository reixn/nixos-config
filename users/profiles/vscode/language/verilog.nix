{ pkgs, ...}: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.mshr-h.VerilogHDL ];
  };
}