{ config, pkgs, ... }: {
  programs.helix = {
    enable = true;
    settings = {
      theme =
        if config.theme.type == "dark" then
          "ayu_dark"
        else if config.theme.type == "light" then
          "ayu_light"
        else
          "default";
      editor = {
        cursorline = true;
      };
    };
  };
}
