{ config, pkgs, ... }:

{
  imports = [
    # Add hardware scan configuration.
    ./hardware-configuration.nix
    # I3 WM
    ./wm.nix
    # Add packages.
    ./packages.nix
    # Add users.
    ./users.nix
  ];

  # Boot block
  boot.initrd.luks.devices = [
    {
      name = "root";
      device = "/dev/sda3";
      preLVM = true;
    }
  ];

  time.timeZone = "Europe/Moscow";

  boot.loader.grub.device = "/dev/sda";

  networking.wireless.enable = true;
}