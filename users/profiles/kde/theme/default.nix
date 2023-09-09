{ config, lib, ... }: {
  xdg.configFile."kdeglobals" =
    if config.theme.type == "dark" then {
      source = ./breezedark/kdeglobals;
    }
    else if config.theme.type == "light" then {
      source = ./breeze/kdeglobals;
    }
    else {
      enable = false;
    }
  ;

  xdg.configFile."plasmarc".text = lib.generators.toINI {} (
    if config.theme.type == "dark" then {
      Theme.name = "breeze-dark";
    } else if config.theme.type == "light" then {
      Theme.name = "breeze";
    } else {}
  );
}
