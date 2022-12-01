{pkgs, ...}: {
  programs.vscode = {
    extensions = with pkgs.vscode-extensions; [
      scala-lang.scala
      scalameta.metals
    ];
    userSettings = {
      "metals.javaHome" = "${pkgs.jdk.outPath}/lib/openjdk";
      "metals.showInferredType" = true;
      "metals.millScript" = "mill";
      "files.watcherExclude" = {
        "**/.bloop" = true;
        "**/.metals" = true;
        "**/.ammonite" = true;
      };
    };
  };
}