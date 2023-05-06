{ ... }: {
  containers.mirror = {
    ephemeral = true;
    bindMounts."/var/www" = {
      hostPath = "/var/mirror";
      isReadOnly = true;
    };
    config = { ... }: {
      services.nginx.enable = true;
    };
  };
}