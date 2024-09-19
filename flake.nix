{
  description = "UserCommon's NixOS configuration flake";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    systems.url = "github:nix-systems/default";

    nix-minecraft.url = "github:Infinidoge/nix-minecraft";

  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... }@inputs:
    let
      inherit (self) outputs;
      systems = [ "x86_64-linux" ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in {
      nixosModules = import ./modules/nixos;
      homeManagerModules = import ./modules/home;

      nixosConfigurations = {
        hp-aero-13 = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs outputs; };

          modules = [
            ./hosts/generic/system
            ./hosts/hp-aero-13/system

            # Home-Manager
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.usercommon = ({ config, pkgs, ... }: {
                imports = [
                  ./modules/home
                  ./hosts/generic/home
                  ./hosts/hp-aero-13/home
                ];

                nixpkgs = { config = { allowUnfree = true; }; };

                home = {
                  username = "usercommon";
                  homeDirectory = "/home/usercommon";
                };

                programs.home-manager.enable = true;
                programs.firefox.enable = true;

                systemd.user.startServices = "sd-switch";

                home.stateVersion = "24.05";
              });
            }
          ];
        };

        desktop-nixos = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs outputs;
            nixpkgs-unstable = import nixpkgs-unstable { system = "x86_64-linux"; config.allowUnfree = true; };
          };

          modules = [
            ./hosts/generic/system
            ./hosts/desktop-nixos/system
            # ./modules/minecraft-servers

            # Home-Manager
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.usercommon = ({ config, pkgs, ... }: {
                imports = [
                  ./modules/home
                  ./hosts/generic/home
                  ./hosts/desktop-nixos/home
                ];

                nixpkgs = { config = { allowUnfree = true; }; };

                home = {
                  username = "usercommon";
                  homeDirectory = "/home/usercommon";
                };

                programs.home-manager.enable = true;
                programs.firefox.enable = true;

                systemd.user.startServices = "sd-switch";

                home.stateVersion = "24.05";
              });
            }
          ];
        };
      };
    };
}
