{ pkgs, ... }: {
  home.packages = [
    pkgs.ghc
    pkgs.ghc.doc
    pkgs.cabal-install
    pkgs.haskell-language-server
  ];
}
