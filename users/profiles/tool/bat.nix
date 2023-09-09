{ config, ... }: {
  programs.bat = {
    enable = true;
    config = if config.theme.type == "dark" then {
      theme = "OneHalfDark";
    } else if config.theme.type == "light" then {
      theme = "OneHalfLight";
    } else {};
  };
}
