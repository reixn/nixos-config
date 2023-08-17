{ pkgs, ...}: {
  home.packages = with pkgs; [
    cargo
    rustc
    rustc.doc
    rustfmt
    clippy
    rust-bindgen
    rust-cbindgen
    gcc
  ];
}
