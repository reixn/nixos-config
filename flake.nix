{
  description = "A highly structured configuration database.";

  inputs =
    {
      nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";

      home-manager.url = "github:nix-community/home-manager/release-23.11";
      home-manager.inputs.nixpkgs.follows = "nixpkgs";

      impermanence.url = "github:nix-community/impermanence";

      # vscoq 2 extension
      nix-vscode-extensions= {
        url = "github:nix-community/nix-vscode-extensions";

        inputs.nixpkgs.follows = "nixpkgs";
      };

      # vscoq 2 language server
      vscoq = {
        type = "github";
        owner = "coq-community";
        repo = "vscoq";
        ref = "v2.0.3+coq8.18";

        inputs.nixpkgs.follows = "nixpkgs";
      };
    };

  outputs =
    { self
    , nixpkgs
    , home-manager
    , impermanence
    , vscoq
    , nix-vscode-extensions
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
        test-user.base = import ./users/test-user/base.nix;
      };
      home = {
        modules = import ./users/modules;
        inherit (import ./users/profiles) profiles suites;
      };
    in {
      nixosConfigurations = {
        laptop1 = let
          system = "x86_64-linux";
        in nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit inputs users system;
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
              };
            })
            home-manager.nixosModules.home-manager
            ({...}: {
              home-manager = {
                extraSpecialArgs = {
                  inherit inputs system;
                  inherit (home) profiles suites;
                };
                useGlobalPkgs = true;
                sharedModules = [
                  home.modules.xvim
                  home.modules.theme_info
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
