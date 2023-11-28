{
  base = import ./base.nix;

  firefox = import ./firefox.nix;

  googleapis.ajax = import ./googleapis/ajax;
}
