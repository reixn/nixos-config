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
    };
  };
}
