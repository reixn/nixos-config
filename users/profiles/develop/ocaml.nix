{ pkgs, ... }: {
  home.packages = with pkgs; [
    ocaml
    opam
    dune_3
    dune-release
    ocamlformat
    ocamlPackages.ocaml-lsp
    ocamlPackages.merlin
    ocamlPackages.odoc
    ocamlPackages.utop
  ];
}
