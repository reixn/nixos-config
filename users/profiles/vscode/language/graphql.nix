{ pkgs, ... }: {
  programs.vscode = {
    extensions = with pkgs.vscode-extensions; [
      graphql.vscode-graphql
      graphql.vscode-graphql-syntax
    ];
  };
}
