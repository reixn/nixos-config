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
    nmap
    ripgrep
    skim
    tealdeer
    unzip
    wget
    whois
  ];
}
