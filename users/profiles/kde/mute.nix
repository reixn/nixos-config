{ lib, ... }: {
  xdg.configFile."plasmaparc".text = lib.generators.toINI {} {
    General.GlobalMute=true;
  };
}
