{ ... }: {
  programs.firefox.policies = {
    Certificates.Install = [ "/var/mirror/ca/ca.pem" ];
  };
}
