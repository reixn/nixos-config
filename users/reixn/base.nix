{ suite, profiles, pkgs, ... }:
{
  users.users.reixn = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  home-manager.users.reixn = {suites, profiles, pkgs, ...}: {
    programs.git = {
      userName = "Kyle Rogers";
      userEmail = "reixn@outlook.com";
    };
  };
}