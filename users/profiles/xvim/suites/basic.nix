name:
{...}:{
  imports = [
    ((import ../base) name)
    ((import ../theme/moonfly.nix) {enable = true;} name)
    ((import ../language/nix.nix) name)
  ];
}