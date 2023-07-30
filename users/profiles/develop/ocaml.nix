{ pkgs, ... }: {
  home.packages = with pkgs; [
    ocaml
    opam
    dune-release
    ocamlformat
    ocamlPackages.ocaml-lsp
    ocamlPackages.merlin
    ocamlPackages.odoc
    ocamlPackages.utop
  ];
}
