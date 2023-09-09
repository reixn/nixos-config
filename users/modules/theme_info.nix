{ lib, ... }:
with lib;
{
  options = {
    theme.type = mkOption {
      type = types.enum [
        "default"
        "light"
        "dark"
      ];
      default = "default";
    };
  };
}
