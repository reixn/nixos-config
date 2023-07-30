{ pkgs, ... }: {
  home.packages = [
    pkgs.ghc
    pkgs.cabal-install
    pkgs.haskell-language-server
  ];
}