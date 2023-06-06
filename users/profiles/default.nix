let
  profiles = {
    develop = import ./develop;
    direnv = import ./direnv;
    kde = import ./kde;
    mail.evolution = import ./mail/evolution.nix;
    tool = import ./tool;
    vscode = import ./vscode;
    xvim = import ./xvim;
    firefox = import ./firefox.nix;
    git = import ./git.nix;
    gpg = import ./gpg.nix;
  };
in {
  inherit profiles;
  suites = with profiles; rec {
    base = {...}: {
      imports = [ direnv git ];
    };
    laptop = {...}: {
      imports = [
        base
        kde.suites.base
        firefox
        tool.htop.laptop
      ];
    };
    server = {...}: {
      imports = [
        base
        tool.htop.laptop
        tmux
      ];
    };
  };
}