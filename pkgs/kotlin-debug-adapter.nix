{ lib, stdenv, fetchzip, openjdk, gradle, makeWrapper, maven }:

stdenv.mkDerivation rec {
  pname = "kotlin-debug-adapter";
  version = "0.4.3";
  src = fetchzip {
    url = "https://github.com/fwcd/kotlin-debug-adapter/releases/download/${version}/adapter.zip";
    sha256 = "1znlh5rhmwci5lvwfgssmxfcxhzi8i83crpfq7dlz4m0xbw07856";
  };

  dontBuild = true;

  installPhase = ''
    mkdir -p $out/lib
    mkdir -p $out/bin
    cp -r lib/* $out/lib
    cp -r bin/* $out/bin
  '';

  nativeBuildInputs = [ gradle makeWrapper ];
  buildInputs = [ openjdk gradle ];

  postFixup = ''
    wrapProgram "$out/bin/kotlin-debug-adapter" --set JAVA_HOME ${openjdk} --prefix PATH : ${lib.strings.makeBinPath [ openjdk maven ] }
  '';
}
