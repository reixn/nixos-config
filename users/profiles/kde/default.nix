let
  config = {
    bluedevil = import ./bluedevil.nix;
    disable-baloo = import ./disable-baloo.nix;
    dolphin = import ./dolphin.nix;
    kate = import ./kate.nix;
    konsole = import ./konsole.nix;
    kwrite = import ./kwrite.nix;
  };
in config // {
  suites = {
    base = { ... }: {
      imports = with config; [
        dolphin
        konsole
        disable-baloo
      ];
    };
  };
}