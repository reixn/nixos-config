{ pkgs, ... }: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.ziglang.vscode-zig ];
    userSettings = {
      "zig.zls.path" = "${pkgs.zls}/bin/zls";
      "zig.zigPath" = "${pkgs.zig}/bin/zig";
    };
  };
}