{ pkgs, ... }: {
  containers.mirror.config = { pkgs, ... }: {
    services.nginx.virtualHosts = {
      "ajax.googleapis.com" = {
        addSSL = true;
        sslCertificate = "/var/www/key/ajax.googleapis.com.pem";
        sslCertificateKey = "/var/www/key/ajax.googleapis.com.key";
        locations = {
          "/ajax/libs/jquery/".alias = let
            link_version = v: let
                min = pkgs.fetchurl {
                  url = "https://code.jquery.com/jquery-${v.version}.min.js";
                  hash = v.core.min.hash;
                };
              in ''
                mkdir -pv $out/${v.version}
                ln -s ${min.outPath} $out/${v.version}/jquery.min.js
              '';
            jquery-mirror = pkgs.runCommand "jquery-mirror" {} ''
              mkdir $out
              ${ builtins.concatStringsSep
                "\n"
                (builtins.map link_version (import ./jquery.nix)) }
            '';
          in "${jquery-mirror.outPath}/";
        };
      };
    };
  };

  networking.hosts = {
    "127.0.0.1" = [
      "ajax.googleapis.com"
    ];
  };
}
