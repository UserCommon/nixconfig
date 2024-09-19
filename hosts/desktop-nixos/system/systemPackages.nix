{ pkgs, nixpkgs-unstable, ... }:
{
  environment.systemPackages = with pkgs; [
    curl
    gnumake
    gcc
    openssh
    openssl
    gtkgnutella
    vim
    xdg-desktop-portal-gtk
    xclip
    syncthing
    texliveFull
    pkg-config
    devenv
    gnomeExtensions.gsconnect
    zip
    unzip
    docker-compose
    vistafonts
    corefonts
    qemu
    virt-manager
    probe-rs
  
    (nixpkgs-unstable.ollama.override { acceleration = "cuda"; })
    
  ];
}
