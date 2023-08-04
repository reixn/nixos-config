let
  config = {
    base = import ./base.nix;
    neovim = import ./neovim.nix;
    spell = import ./spell.nix;
    theme.ayu-light = import ./theme/ayu-light.nix;
    language = import ./language;
    tools = import ./tools;
  };
in config // {
  suites = {
    base = { ... }: {
      imports = with config; [
        base
        neovim
        spell
      ];
    };
  };
}
