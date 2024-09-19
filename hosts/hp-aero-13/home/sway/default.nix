{ config, pkgs, ... }: {
  home.file = {
    ".config/sway" = {
      source = config.lib.file.mkOutOfStoreSymlink ./sway_conf;
    };
  };

  # home.pointerCursor = {
  #   name = "Adwaita";
  #   package = pkgs.gnome.adwaita-icon-theme;

  #   size = 24;
  #   x11 = {
  #     enable = true;
  #     defaultCursor = "Adwaita";
  #   };
  # };
}
