{ pkgs, ... }: {
  home.packages = with pkgs; [
    typst
    typst-fmt
  ];
}
