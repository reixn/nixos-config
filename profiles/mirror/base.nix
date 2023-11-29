let
  user_group = {
    users.mirror = {
      uid = 900;
      description = "User for website mirror";
      group = "mirror";
      isSystemUser = true;
    };
    groups.mirror = {
      gid = 900;
    };
  };
in
{ ... }: {
  users = user_group;
  containers.mirror = {
    ephemeral = true;
    bindMounts."/var/www" = {
      hostPath = "/var/mirror";
      isReadOnly = true;
    };
    config = { ... }: {
      users = user_group;

      services.nginx = {
        enable = true;
        user = "mirror";
        group = "mirror";
      };

      services.coredns = {
        enable = true;
        config = ''
          . {
            forward . 8.8.4.4 1.1.1.1
            cache
          }
        '';
      };
    };
  };
}
