{ pkgs, ... }: {
  home.packages = [
    pkgs.kotlin
    pkgs.kotlin-native
  ];
}
