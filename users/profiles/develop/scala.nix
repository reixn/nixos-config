{ pkgs, ... }: {
  home.packages = with pkgs; [
    scala-cli
    dotty
    scalafmt
    scalafix
    metals
  ];
}
