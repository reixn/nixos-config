{ pkgs, ...}: {
  home.packages = [
    pkgs.cargo
    pkgs.rustc
    pkgs.rustfmt
    pkgs.gcc
  ];
}
