{ pkgs, lib, ...}:
let
  cascadia = "Cascadia Code PL,10,-1,5,50,0,0,0,0,0";
  historySize = 5000;
in {
  xdg.configFile."konsolerc".text = lib.generators.toINI {} {
    "Desktop Entry".DefaultProfile = "default_light.profile";
    TabBar.NewTabBehavior = "PutNewTabAfterCurrentTab";
  };
  xdg.dataFile = {
    "konsole/default_light.profile".text = lib.generators.toINI {} {
      Appearance = {
        ColorScheme = "One Half Light";
        Font = cascadia;
      };
      "Cursor Options".CursorShape = 1; # I-beam
      General = {
        Name = "default (light)";
        Parent = "FALLBACK/";
      };
      Scrolling.HistorySize = historySize;
    };

    "konsole/default_dark.profile".text = lib.generators.toINI {} {
      Appearance = {
        ColorScheme = "One Half Dark";
        Font = cascadia;
      };
      "Cursor Options".CursorShape = 1;
      General = {
        Name = "default (dark)";
        Parent = "FALLBACK/";
      };
      Scrolling.HistorySize = historySize;
    };

    "konsole/One Half Dark.colorscheme".text = lib.generators.toINI {} {
      Background.Color = "40,44,52";
      BackgroundFaint.Color = "40,44,52";
      BackgroundIntense.Color = "40,44,52";

      Color0.Color = "40,44,52";
      Color0Faint.Color = "40,44,52";
      Color0Intense.Color = "40,44,52";

      Color1.Color = "224,108,117";
      Color1Faint.Color = "224,108,117";
      Color1Intense.Color = "224,108,117";

      Color2.Color = "152,195,121";
      Color2Faint.Color = "152,195,121";
      Color2Intense.Color = "152,195,121";

      Color3.Color = "229,192,123";
      Color3Faint.Color = "229,192,123";
      Color3Intense.Color = "229,192,123";

      Color4.Color = "97,175,239";
      Color4Faint.Color = "97,175,239";
      Color4Intense.Color = "97,175,239";

      Color5.Color = "198,120,221";
      Color5Faint.Color = "198,120,221";
      Color5Intense.Color = "198,120,221";

      Color6.Color = "86,182,194";
      Color6Faint.Color = "86,182,194";
      Color6Intense.Color = "86,182,194";

      Color7.Color = "220,223,228";
      Color7Faint.Color = "220,223,228";
      Color7Intense.Color = "220,223,228";

      Foreground.Color = "171,178,191";
      ForegroundFaint.Color = "92,99,112";
      ForegroundIntense.Color = "130,137,151";

      General = {
        Description = "One Half Dark";
        Opacity = 0.7;
      };
    };
    "konsole/One Half Light.colorscheme".text = lib.generators.toINI {} {
      Color0.Color = "56,58,66";
      Color0Faint.Color="56,58,66";
      Color0Intense.Color="56,58,66";

      Color1.Color="228,86,73";
      Color1Faint.Color="228,86,73";
      Color1Intense.Color="228,86,73";

      Color2.Color="80,161,79";
      Color2Faint.Color="80,161,79";
      Color2Intense.Color="80,161,79";

      Color3.Color="193,132,1";
      Color3Faint.Color="193,132,1";
      Color3Intense.Color="193,132,1";

      Color4.Color="1,132,188";
      Color4Faint.Color="1,132,188";
      Color4Intense.Color="1,132,188";

      Color5.Color="166,38,164";
      Color5Faint.Color="166,38,164";
      Color5Intense.Color="166,38,164";

      Color6.Color="9,151,179";
      Color6Faint.Color="9,151,179";
      Color6Intense.Color="9,151,179";

      Color7.Color="250,250,250";
      Color7Faint.Color="250,250,250";
      Color7Intense.Color="250,250,250";

      Foreground.Color="56,58,66";
      ForegroundFaint.Color="56,58,66";
      ForegroundIntense.Color="56,58,66";

      Background.Color="250,250,250";
      BackgroundFaint.Color="250,250,250";
      BackgroundIntense.Color="250,250,250";

      General = {
        Description="OneHalf Light";
        Opacity = 0.7;
      };
    };
  };
}
