{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
      ${pkgs.fastfetch}/bin/fastfetch -c examples/13.jsonc
      starship init fish | source
      set -x PATH /home/vageesh/development/flutter/bin $PATH
    '';
    shellAliases = {
      ls = "eza --icons --all -l";
      nixbuild = "sudo nixos-rebuild switch --flake /home/vageesh/.dotfiles#nixos";
      nixpy = "nix develop ~/.dotfiles#python --command fish";
      nixc = "nix develop ~/.dotfiles#c --command fish";
      nixnode = "nix develop ~/.dotfiles#node --command fish";
      nixrust = "nix develop ~/.dotfiles#rust --command fish";
      nixdef = "nix develop ~/.dotfiles --command fish";
    };
  };
}