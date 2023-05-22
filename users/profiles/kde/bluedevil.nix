{ lib, ... }: {
  xdg.configFile."bluedevilglobalrc".text = lib.generators.toINI {} {
    Global.launchState = "disable";
  };
}