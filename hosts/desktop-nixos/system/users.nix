{ pkgs, ... }: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.usercommon = {
    isNormalUser = true;
    description = "Cyrill Nenashev";
    extraGroups = [
      "networkmanager"
      "wheel"
      "storage"
      "docker"
      "tty"
      "dialout"
      "libvirtd"
      "plugdev"
    ];
    packages = with pkgs;
    [
      firefox
      #  thunderbird
    ];
  };
}
