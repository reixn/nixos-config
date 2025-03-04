final: prev: {
  # keep sources this first
  sources = prev.callPackage (import ./_sources/generated.nix) { };

  quartus-prime = prev.callPackage ./quartus-prime {};

  vimPlugins = prev.lib.recursiveUpdate prev.vimPlugins
    (prev.callPackage ./vimPlugins { });

  vscode-extensions = prev.lib.recursiveUpdate prev.vscode-extensions
    (prev.callPackage ./vscode-extensions { });

  kotlin-debug-adapter = prev.callPackage ./kotlin-debug-adapter.nix {};
  # then, call packages with `final.callPackage`
}
