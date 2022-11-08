{ pkgs, ... }:
{
  imports = [
    ../min.nix
  ];

  boot.tmpOnTmpfs = true;
  
  users.mutableUsers = true;

  nix = {
    # Improve nix store disk usage
    autoOptimiseStore = true;
    optimise.automatic = true;
    allowedUsers = [ "@wheel" "@users" ];
  };
}