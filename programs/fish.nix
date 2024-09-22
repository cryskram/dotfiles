{ ... }:

{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
      starship init fish | source
      set -x PATH /home/vageesh/development/flutter/bin $PATH
    '';
    shellAliases = {
      ls = "eza --icons --all -l";
      nixbuild = "sudo nixos-rebuild switch --flake /home/vageesh/.dotfiles#nixos";
    };
  };
}