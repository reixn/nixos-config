{
  description = "A highly structured configuration database.";

  inputs =
    {
      nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";

      home-manager.url = "github:nix-community/home-manager/release-22.11";
      home-manager.inputs.nixpkgs.follows = "nixpkgs";

      impermanence.url = "github:nix-community/impermanence";
    };

  outputs =
    { self
    , nixpkgs
    , home-manager
    , impermanence
    , ...
    } @ inputs: let
      overlays = {
        manix = import ./overlays/manix.nix;
        overrides = import ./overlays/overrides.nix;
        pkgs = import ./pkgs;
      };
      nixos = rec {
        profiles = import ./profiles;
        suites = with profiles; rec {
          base = {...}: {
            imports =  [ core.nixos.base ];
          };
        };
      };
      users = {
        reixn.base = import ./users/reixn/base.nix;
      };
      home = {
        modules = import ./users/modules;
        inherit (import ./users/profiles) profiles suites;
      };
    in {
      nixosConfigurations = {
        laptop1 = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = {
            inherit inputs users;
            inherit (nixos) profiles suites;
          };
          modules = [
            ({ ... }: {
              nixpkgs = {
                overlays = [
                  overlays.manix
                  overlays.overrides
                  overlays.pkgs
                ];
                config.allowUnfree = true;
              };
            })
            home-manager.nixosModules.home-manager
            ({...}: {
              home-manager = {
                extraSpecialArgs = {
                  inherit (home) profiles suites;
                };
                useGlobalPkgs = true;
                sharedModules = [
                  home.modules.xvim
                ];
              };
            })
            impermanence.nixosModules.impermanence
            ./hosts/nixos/laptop1
          ];
        };
      };
    };
}
