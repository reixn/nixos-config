{ suite, profiles, pkgs, ... }:
{
  users.users.reixn = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  home-manager.users.reixn = {suites, profiles, pkgs, ...}: {
    imports = [
        ../modules/xvim
        ((import profiles.xvim.suites.basic) "neovim")
    ];
    
    xvim.neovim.base.enable = true;

    programs.git = {
      userName = "Kyle Rogers";
      userEmail = "reixn@outlook.com";
    };
  };
}