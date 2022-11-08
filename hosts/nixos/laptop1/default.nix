{ profiles, suites, pkgs, ... }:
{
  imports =
    suites.base ++ [
       # Include the results of the hardware scan.
      ./hardware-configuration.nix
      profiles.core.admintools
      profiles.plasma
    ];

  # Bootloader.
  boot.loader = {
    systemd-boot.enable = true;

    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi";
    };
  };

  networking = {
    # Enable networking
    networkmanager.enable = true;
  };

  # Set your time zone.
  time.timeZone = "Asia/Shanghai";

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };

  services.fstrim.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leavecatenate(variables, "bootdev", bootdev)
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?

  home-manager.users = {
    reixn = {...}: { home.stateVersion = "22.05"; };
  };

  nix.settings.substituters = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];
}
