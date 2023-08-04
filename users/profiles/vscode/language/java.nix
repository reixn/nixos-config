{ pkgs, ... }: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.redhat.java ];
    userSettings = {
      "java.jdt.ls.java.home" = "${pkgs.jdk.outPath}/lib/openjdk";
    };
  };
}
