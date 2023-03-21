{ pkgs, ...}: {
  home.packages = [
    pkgs.cargo
    pkgs.rustc
  ];
}