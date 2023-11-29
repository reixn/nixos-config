{ ... }: {
  containers.mirror.config = { ... }: {
    services.nginx.virtualHosts = {
      "www.google.com" = {
        addSSL = true;
        sslCertificate = "/var/www/key/www.google.com.pem";
        sslCertificateKey = "/var/www/key/www.google.com.key";
        locations = {
          "/recaptcha/api.js".return = "301 https://recaptcha.net$request_uri";
        };
      };
    };

    services.coredns.config = ''
      www.google.com {
        hosts /dev/null {
          127.0.0.1 www.google.com
        }
      }
    '';
  };
}
