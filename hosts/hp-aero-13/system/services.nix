{ ... }:
{
  services = {
    pipewire = {
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

    # Enable automatic login for the user.
    displayManager.autoLogin.enable = false;
    displayManager.autoLogin.user = "usercommon";

    openssh.enable = true;

    # Enable the X11 windowing system.
    xserver.enable = true;

    # Enable the GNOME Desktop Environment.
    xserver.displayManager.gdm.enable = true;
    xserver.desktopManager.gnome.enable = true;

    # Configure keymap in X11
    xserver = {
      xkb = {
        layout = "us, ru";
        variant = "";
        options = "grp:win_space_toggle";
      };
    };

    # Enable CUPS to print documents.
    printing.enable = true;
  };
}
