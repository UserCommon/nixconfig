{ config, pkgs, ... }: {
  programs.helix = {
    enable = true;
    settings = {
      theme = "onedark";
      editor = {
        cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "underline";
        };

        line-number = "relative";
      };
    };
    languages.language = [{
      name = "nix";
      auto-format = true;
      formatter.command = "${pkgs.nixfmt}/bin/nixfmt";
    }];
  };
}

