{ pkgs, ... }:
{
  imports = [
    ../min.nix
  ];

  boot.tmpOnTmpfs = true;
  
  nix = {
    settings = {
      # Improve nix store disk usage
      auto-optimise-store = true;
      allowed-users = [ "@wheel" "@users" ];
    };
    optimise.automatic = true;
  };
}