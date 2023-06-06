let
  common = import ./common.nix;
in
{
  desktop = common { profile = "desktop"; };
  laptop = common { profile = "laptop"; };
  server = common { profile = "server"; };
}