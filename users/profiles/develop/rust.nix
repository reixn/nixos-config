{ pkgs, ...}: {
  home.packages = [
    pkgs.cargo
    pkgs.rustc
    pkgs.rustc.doc
    pkgs.rustfmt
    pkgs.gcc
  ];
}
