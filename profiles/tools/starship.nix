{ pkgs, ... }: {
  programs.starship = {
    enable = true;
    settings = {
      username.show_always = true;
      shell = {
        disabled = false;
        style = "cyan bold";
      };
      shlvl = {
        disabled = false;
        threshold = 1;
      };
    };
  };
}