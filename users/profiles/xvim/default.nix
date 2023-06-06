let
  config = {
    base = import ./base;
    coc = import ./coc;
    language = import ./language;
    misc.lightline = import ./misc/lightline;
    theme = import ./theme;
  };
in config