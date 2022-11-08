{pkgs, ...}: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.maximedenes.vscoq ];
    userSettings = {
      "coqtop.binPath" = "${pkgs.coq.outPath}/bin";
    };
  };
}