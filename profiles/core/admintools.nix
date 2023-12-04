{ pkgs, ... }:
{
  # Selection of sysadmin tools that can come in handy
  environment.systemPackages = with pkgs; [
    bat
    curl
    duf
    du-dust
    dnsutils
    eza
    fd
    htop
    httpie
    jq
    ripgrep
    unzip
    lzip
    wget
    whois
  ];
}
