name:
{...}:{
  imports = [
    ((import ../base) name)
    ((import ../language/nix.nix) name)
  ];
}