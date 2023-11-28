{ pkgs, ... }: {
  services.nginx.virtualHosts = {
    "ghc.haskell.home.arpa" = {
      listenAddresses = ["0.0.0.0"];
      locations."/".root = "${pkgs.haskell.compiler.ghc943.doc}/share/doc/ghc/html";
    };
    "haddock.haskell.home.arpa" = {
      listenAddresses = ["0.0.0.0"];
      locations."/".root = "${pkgs.haskell.compiler.ghc943.doc}/share/doc/ghc/html/haddock";
    };
  };
}