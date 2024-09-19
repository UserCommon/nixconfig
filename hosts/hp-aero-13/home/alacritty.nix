{ config, pkgs, ... }:
{
  programs.alacritty.enable = true;
  
  programs.alacritty.settings = {
    env = {
      TERM = "alacritty";
    };

    working_directory = "/home/usercommon";

    scrolling = {
      history = 10000; 
      multiplier = 3;
    };

    # colors = {
    #   primary = {
    #     background = "#111111";
    #     foreground = "#ffffff";
    #   };

    #   cursor = {
    #     text = "CellBackground";
    #     cursor = "CellForeground";
    #   };

    #   vi_mode_cursor = {
    #     text = "CellBackground";
    #     cursor = "CellForeground";
    #   };
  
    #   normal = {
    #     black = "#111111";
    #     red = "#d40b0e";
    #     green = "#52ff80";
    #     yellow = "#fff642";
    #     blue = "#1a93c7";
    #     magenta = "#db1d00";
    #     cyan = "#5ae8e1";
    #     white = "#ffffff";
    #   };

    #   transparent_background_colors = true;
    # };

    live_config_reload = true;

    # debug = {
    #   render_timer = false;
    #   persistent_logging = false;
    #   log_level = "Warn";
    #   print_events = false;
    # };
  };
}
