{ lib, ... }: {
  xdg.configFile."baloofilerc".text = lib.generators.toINI {} {
    "Basic Settings".Indexing-Enabled = false;
  };
}