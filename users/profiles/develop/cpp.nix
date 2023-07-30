{
  clang = { pkgs, ... }: {
    home.packages = [
      pkgs.clang_14 # match clang-tools version
      pkgs.clang-tools
    ];
  };
  gcc = { pkgs, ... }: {
    home.packages = [ pkgs.gcc ];
  };
}