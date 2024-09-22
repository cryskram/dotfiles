{ config, pkg, ... }:

{
  imports = [
    ./applications.nix
    ./fonts.nix
    ./gnome.nix
    ./cleaner.nix
  ];
}