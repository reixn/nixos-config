{
  base = import ./base.nix;

  googleapis.ajax = import ./googleapis/ajax;

  google.recaptcha = import ./google/recaptcha.nix;
}
