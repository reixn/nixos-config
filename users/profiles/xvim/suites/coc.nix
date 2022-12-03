name:
{...}: {
  imports = builtins.map (p: (import p) name) [
    ../coc/base
    ../coc/highlight.nix
    ../coc/git.nix
    ../coc/explorer.nix
  ];
}