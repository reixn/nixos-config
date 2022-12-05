{ pkgs, ... } : {
  home.packages = with pkgs; [
    evolution
    evolution-ews
    dconf
  ];
  dconf.settings."org/gnome/evolution/mail" = {
    prompt-check-if-default-mailer = false;
  };
}