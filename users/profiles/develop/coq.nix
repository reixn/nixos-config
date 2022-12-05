{ pkgs, ... } : {
  home.packages = [
    pkgs.coq
    pkgs.gnumake
  ];
}