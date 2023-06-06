let
  mkTheme = import ./mkTheme;
in
{
  edge = mkTheme { name = "edge"; pkg = "edge"; };
  moonfly = import ./moonfly;
  nord = mkTheme { name = "nord"; pkg = "nord-vim"; };
}