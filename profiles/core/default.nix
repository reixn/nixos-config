{
  admintools = import ./admintools.nix;
  nixos.base = import ./nixos/base.nix;
  min = import ./min.nix;
}