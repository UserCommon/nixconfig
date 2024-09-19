{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    monaspace
    iosevka
    iosevka-comfy.comfy
    dina-font
  ];

  fonts.fontconfig = {
    defaultFonts = {
      monospace = [
        "Monaspace"
      ];

      sansSerif = [ "Monaspace" ];
      serif = [ "Monaspace" ];
    };
  };
}
