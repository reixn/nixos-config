{ pkgs, ... }:
{
  # Selection of sysadmin tools that can come in handy
  environment.systemPackages = with pkgs; [
    bat
    curl
    direnv
    dogdns
    delta
    duf
    du-dust
    dnsutils
    exa
    fd
    htop
    httpie
    bottom
    jq
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
