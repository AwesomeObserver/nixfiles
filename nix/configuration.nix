{ config, pkgs, ... }:

{
  imports =
    [
      # Add hardware scan configuration.
      ./hardware-configuration.nix
      # Add packages.
      ./packages.nix
      # X-Server
      ./modules/xserver.nix
      # Add users.
      ./modules/users.nix
      # Zsh shell conf
      ./modules/zsh.nix
      # Fonts
      ./modules/fonts.nix
      # Hardware stuff
      ./modules/hardware/intel.nix
      ./modules/hardware/nvidia.nix
      ./modules/hardware/bluetooth.nix
      # Docker
      ./modules/docker.nix
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