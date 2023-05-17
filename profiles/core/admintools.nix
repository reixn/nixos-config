{ pkgs, ... }:
{
  # Selection of sysadmin tools that can come in handy
  environment.systemPackages = with pkgs; [
    bat
    curl
    dogdns
    duf
    du-dust
    dnsutils
    exa
    fd
    htop
    httpie
    jq
    ripgrep
    unzip
    wget
    whois
  ];
}
