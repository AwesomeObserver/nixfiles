{ config, pkgs, ... }:

{ 
  # Packages
  environment.systemPackages = with pkgs;
  [
    # Tools
    curl
    git
    htop
    nix-repl
    nix-zsh-completions
    unrar
    wget
    xclip
    zip
    zsh
    tmux

    # Work
    spotify
    dropbox

    # Social
    skype
    discord 
  ];
}