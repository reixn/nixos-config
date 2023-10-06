{ inputs, profiles, users, suites, pkgs, ... }:
{
  imports = [
     # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./fscrypt.nix
    suites.base
    profiles.core.admintools
    profiles.plasma
    profiles.tools.bat
    profiles.tools.starship
    users.reixn.base
    users.test-user.base
  ];

  # Bootloader.
  boot.loader = {
    systemd-boot.enable = true;

    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi";
    };
  };

  fileSystems = {
    "/" = {
      device = "tmpfs";
      fsType = "tmpfs";
      options = [ "size=2G" "mode=755" ];
    };
  };
  environment.persistence."/nix/presist" = {
    directories = [
      "/etc/nixos"
      "/etc/NetworkManager/system-connections"
      "/var/lib/bluetooth"
    ];
    files = [
      "/etc/machine-id"
      "/var/lib/systemd/timers/stamp-fstrim.timer"
    ];
    users = {
      reixn = {
        directories = [
          { directory = ".ssh"; mode = "0700"; }
          { directory = ".gnupg"; mode = "0700"; }
          "Source"
          "Documents"
          ".local/share/gopass/stores"
          ".mozilla/firefox/default/bookmarkbackups"
        ];
        files = [
          ".config/gh/hosts.yml"
          ".mozilla/firefox/default/places.sqlite"
        ];
      };
    };
  };
  users = {
    mutableUsers = false;
    users = let
      pass-store = "/nix/user-pass";
    in {
      test-user = {
        uid = 1010;
        passwordFile = "${pass-store}/test-user";
        createHome = true;
      };
      reixn = {
        uid = 1000;
        passwordFile = "${pass-store}/reixn";
        createHome = true;
      };
    };
  };

  networking = {
    hostName = "laptop1";
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
  system.stateVersion = "23.05"; # Did you read the comment?

  home-manager.users = {
    reixn = { profiles, suites, pkgs, ...}: {
      imports = [
        suites.laptop
        profiles.kde.bluedevil
        profiles.gpg
        profiles.mail.evolution
        profiles.tool.gh
        profiles.tool.bat
      ] ++ (with profiles.vscode; [
        profiles.vscode.suites.base
        theme.ayu-light
        language.nix
      ]);

      home.packages = [
        pkgs.gopass
      ];

      home.stateVersion = "22.11";
    };
    test-user = { profiles, suites, ... }: {
      imports = [
        suites.laptop
        profiles.kde.bluedevil
      ];

      home.stateVersion = "23.05";
    };
  };

  nix.settings.substituters = [ "https://mirrors.bfsu.edu.cn/nix-channels/store" ];
}
