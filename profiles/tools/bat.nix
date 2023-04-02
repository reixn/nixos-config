{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.bat
  ];
  environment.etc = {
    "bat/config".text = ''
      --theme=OneHalfLight
    '';
  };
}