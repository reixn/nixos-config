{ pkgs, ... }:
{
  # Selection of sysadmin tools that can come in handy
  environment.systemPackages = with pkgs; [
    curl
    direnv
    dnsutils
    fd
    htop
    bottom
    jq
    neovim
    nix-index
    ripgrep
    skim
    tealdeer
    tree
    unzip
    wget
    whois
  ];
}
