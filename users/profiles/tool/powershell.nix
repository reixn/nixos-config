{ pkgs, ... }: {
  home.packages = [pkgs.powershell];
  xdg.configFile."powershell/Microsoft.PowerShell_profile.ps1".text = ''
    Invoke-Expression (&${pkgs.starship}/bin/starship init powershell)
  '';
}