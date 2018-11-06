# This config describes X-Server services
{ config, pkgs, ... }:

{
  services = {
    xserver ={
      enable = true;
      # DE
      desktopManager = {
        default = "gnome3";
        gnome3 = {
          enable = false;
        };
      };
      # WM
      windowManager = {
        # i3-gaps by default as WM
        default = "i3-gaps";
        i3-gaps = {
          enable = true;
          # Describe extra packages
          extraPackages = with pkgs; [
            i3status
            i3lock
          ];
        };
      };
    };
  };
}