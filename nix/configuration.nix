{ config, pkgs, ... }:

{
  imports =
    [
      # Add hardware scan configuration.
      ./hardware-configuration.nix
      # X-Server
      ./xserver.nix
      # Add packages.
      ./packages.nix
      # Add users.
      ./users.nix
      ./zsh.nix
      ./fonts.nix
      ./intel.nix
      ./nvidia.nix
      ./bluetooth.nix
      ./docker.nix
    ];

  # Boot block
  boot.initrd.luks.devices = [
    {
      name = "root";
      device = "/dev/sda3";
      preLVM = true;
    }
  ];
  
  nixpkgs.config = {
    allowUnfree = true;
  }; 

  time.timeZone = "Europe/Moscow";

  boot.loader.grub.device = "/dev/sda";

  networking.wireless.enable = true;
}