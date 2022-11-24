{ vscode-utils }: 
builtins.listToAttrs (
  map 
    (i : {
      name = i.publisher;
      value."${i.name}" = vscode-utils.extensionFromVscodeMarketplace i;
    })
    [
      {
        name = "vscoq";
        publisher = "maximedenes";
        version = "0.3.6";
        sha256 = "1sailpizg7zvncggdma9dyxdnga8jya1a2vswwij1rzd9il04j3g";
      }
      {
        name = "vscode-antlr4";
        publisher = "mike-lischke";
        version = "2.3.0";
        sha256 = "0p1bv43iy9amaql3snpj9ais0skbwxa8c0q4k0g6rny015c8f214";
      }
    ])