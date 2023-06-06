{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    coreutils
    git
    moreutils
    neovim
  ];

  nix = {
    settings = {
      # Prevents impurities in builds
      sandbox = true;

      # Give root user and wheel group special Nix privileges.
      trusted-users = [ "root" "@wheel" ];
    };

    # Generally useful nix option defaults
    extraOptions = ''
      min-free = 536870912
      fallback = true
      experimental-features = nix-command flakes ca-derivations
    '';

  };
}
