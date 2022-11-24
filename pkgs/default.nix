final: prev: {
  # keep sources this first
  sources = prev.callPackage (import ./_sources/generated.nix) { };
  
  vimPlugins = prev.lib.recursiveUpdate prev.vimPlugins
    (prev.callPackage ./vimPlugins { });

  vscode-extensions = prev.lib.recursiveUpdate prev.vscode-extensions
    (prev.callPackage ./vscode-extensions { });
  # then, call packages with `final.callPackage`
}
