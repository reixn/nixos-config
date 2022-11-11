{ pkgs, ... }:
{
  # Sets nrdxp.cachix.org binary cache which just speeds up some builds
  imports = [ ../cachix ];

  environment.systemPackages = with pkgs; [
    coreutils
    git
    moreutils
    neovim
  ];

  nix = {
    # Prevents impurities in builds
    useSandbox = true;

    # Give root user and wheel group special Nix privileges.
    trustedUsers = [ "root" "@wheel" ];

    # Generally useful nix option defaults
    extraOptions = ''
      min-free = 536870912
      fallback = true
    '';

  };
}
