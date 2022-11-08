{config, pkgs, lib, ...}:
{
  imports = [
    ./vim.nix
    ./neovim.nix
  ];

  options = {
    xvim.all.coc = (import ./options.nix {
      inherit pkgs lib;
    }).opts;
  };

  config = let
    cfg = config.xvim.all.coc;
    push = if cfg.enable
      then cfg
      else builtins.removeAttrs cfg [ "enable" ];
  in {
    xvim = {
      vim.coc = push;
      neovim.coc = push;
    };
  };
}
