{
  antlr4 = import ./antlr4.nix;
  coq = {
    vscoq = import ./coq/vscoq.nix;
    coq-lsp = import ./coq/coq-lsp.nix;
  };
  cpp = import ./cpp.nix;
  dhall = import ./dhall.nix;
  gradle = import ./gradle.nix;
  graphql = import ./graphql.nix;
  haskell = import ./haskell.nix;
  java = import ./java.nix;
  kotlin = import ./kotlin.nix;
  latex = import ./latex.nix;
  nix = import ./nix.nix;
  ocaml = import ./ocaml.nix;
  powershell = import ./powershell.nix;
  python = import ./python.nix;
  racket = import ./racket.nix;
  ron = import ./ron.nix;
  rust = import ./rust.nix;
  scala = import ./scala.nix;
  toml = import ./toml.nix;
  typst = import ./typst.nix;
  verilog = import ./verilog.nix;
  yaml = import ./yaml.nix;
  zig = import ./zig.nix;
}
