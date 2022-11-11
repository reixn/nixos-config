{ suite, profiles, pkgs, ... }:
{
  users.users.reixn = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  home-manager.users.reixn = {suites, profiles, pkgs, ...}: {
    imports = 
      suites.laptop ++ [
        ../modules/xvim
        ((import profiles.xvim.suites.basic) "neovim")
        profiles.vscode.suites.base
        profiles.bottom
        profiles.bat
      ];
    
    xvim.neovim.base.enable = true;

    programs.git = {
      userName = "reixn";
      userEmail = "reixn@outlook.com";
    };
  };
}