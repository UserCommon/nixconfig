{ pkgs, ... }:
{
  imports = [
    ./helix.nix
  ];

  home.packages = with pkgs; [
    zip
    xz
    unzip
    p7zip

    ripgrep
    fzf
    eza
    jq

    strace
    ltrace
    lsof

    prismlauncher
   ];

  programs = {
    git.enable = true;
    firefox.enable = true;
    vim.enable = true;
  };
}
