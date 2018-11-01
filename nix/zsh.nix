{ config, pkgs, ... }:

{
  programs = {
    zsh = {
      enable = true;

      autosuggestions.enable = true;

      syntaxHighlighting.enable = true;

      autosuggestions.extraConfig = {
        "ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE" = "20";
      };

      shellAliases = {
        l = "ls -alh";
        ll = "ls -l";
        ls = "ls --color=tty";
        # Build package from default.nix inside nixpkgs. Will put result as ./result if succeeds
        # i.e. nix-build -A watchexec -> will build watchexec package
        nb = "nix-build -A <package>";
        # Install the build and put it `~/.nix-profile/bin`
        ni = "nix-env -i ";
        nc = "nix-collect-garbage --delete-older-than 30d";
        nsp = "nix-env -qaP | grep wget";
        # See installed packages
        nipl = "nix-env -q";
        # Install packages
        nip = "nix-env -iA";
        nrs = "nixos-rebuild switch";
        nsl = "nixos-rebuild switch --rollback";
        nv = "nixos-version";
      };

      ohMyZsh = {
        enable = true;

        theme = "agnosterzak";

        plugins = [
          # Describe plugins here
        ];
      };
    };
  };
}