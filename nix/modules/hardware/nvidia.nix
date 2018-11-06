{ config, pkgs, ... }:

{
  hardware ={
    nvidia = {
      optimus_prime.enable = true;
    };
  };
}