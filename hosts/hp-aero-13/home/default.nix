{ config, pkgs, ... }:
{
  imports = [
    ./sway

    ./git.nix
    ./theme.nix
    ./waybar.nix
    ./alacritty.nix
  ];

  home.packages = with pkgs; [
    telegram-desktop
  ];

  programs = {
    vscode.enable = true;
  };
}
