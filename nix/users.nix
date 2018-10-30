{ config, pkgs, ... }:

{ 
  # Users block
  users.extraUsers.awesome_observer = {
    name = "awesome_observer";

    group = "users";
    
    # Groups for user
    extraGroups = [
      "audio"
      "disk"
      "docker"
      "networkmanager"
      "systemd-journal"
      "video"
      "wheel"
    ];

    createHome = true;

    home = "/home/awesome_observer";

    uid = 1000;
    
    # Executable shell
    shell = "/run/current-system/sw/bin/zsh";
  };
}