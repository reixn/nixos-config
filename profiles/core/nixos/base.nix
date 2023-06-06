{ pkgs, ... }:
{
  imports = [
    ../min.nix
  ];
  
  nix = {
    settings = {
      # Improve nix store disk usage
      auto-optimise-store = true;
      allowed-users = [ "@wheel" "@users" ];
    };
    optimise.automatic = true;
  };
}