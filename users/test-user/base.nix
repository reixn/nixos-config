{ pkgs, ... }: {
  users.users.test-user = {
    isNormalUser = true;
  };
}
