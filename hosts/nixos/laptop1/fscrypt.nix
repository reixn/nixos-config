{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    fscryptctl
    fscrypt-experimental
  ];
  environment.etc."fscrypt.conf".source = (pkgs.formats.json {}).generate "fscrypt.conf" {
    source = "custom_passphrase";
    hash_costs = {
      time = "2170";
      memory = "131072";
      parallelism = "8";
    };
    options =  {
      padding = "32";
      contents =  "AES_256_XTS";
      filenames = "AES_256_CTS";
      policy_version = "2";
    };
    use_fs_keyring_for_v1_policies =  false;
    allow_cross_user_metadata = false;
  };
}
