# Docker
{ config, pkgs, ... }:

{
  virtualisation = {
    docker = {
      enable = true;

      enableOnBoot = true;
    };
  };
  
  environment.systemPackages =
    if config.virtualisation.docker.enable then with pkgs;
      [
        docker
        docker_compose
      ]
    else
      [ ];
}