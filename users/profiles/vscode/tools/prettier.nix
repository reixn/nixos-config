{ pkgs, ... }: {
  programs.vscode = {
    extensions = [ pkgs.vscode-extensions.esbenp.prettier-vscode ];
    userSettings = let
      formatter_cfg = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
    in {
      "[javascript]" = formatter_cfg;
      "[html]" = formatter_cfg;
      "[css]" = formatter_cfg;
      "[json]"."editor.defaultFormatter" = "vscode.json-language-features";
    };
  };
}
