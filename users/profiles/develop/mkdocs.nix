{ pkgs,... }: {
  home.packages = with pkgs; [
    mkdocs
    python310Packages.mkdocs-material
    python310Packages.pymdown-extensions
  ];
}
