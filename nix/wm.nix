# i3 desktop config
{ config, pkgs, ... }:

{ 
  # X-Server
  services.xserver = {

    # WM
    windowManager = {
      i3-gaps.enable = true;
      default = "i3-gaps";
    };
  };
}