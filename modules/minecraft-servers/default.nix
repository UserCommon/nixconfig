{ pkgs, lib, inputs, ... }: {
  imports = [ inputs.nix-minecraft.nixosModules.minecraft-servers ];
  nixpkgs.overlays = [ inputs.nix-minecraft.overlay ];

  services.minecraft-servers = {
    enable = true;
    eula = true;
    dataDir = "/var/lib/home-servers";

    servers = {
      vanilla-1_4_7 = {
        enable = true;
        package = pkgs.vanillaServers.vanilla-1_4_7;
      };
    };
  };
}
