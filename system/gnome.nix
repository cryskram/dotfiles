{ config, pkgs, ... }:

{
  environment.systemPackages = ( with pkgs; [
    gnome-tweaks
  ]) ++ ( with pkgs.gnomeExtensions; [
    dash-to-dock
    appindicator
    blur-my-shell
    emoji-copy
    caffeine
    clipboard-indicator
    color-picker
    x11-gestures
  ]);

  environment.gnome.excludePackages = (with pkgs; [
    gnome-tour
    gnome-connections
    epiphany
    simple-scan
    yelp
  ]) ++ ( with pkgs; [
    seahorse
    totem
    geary
    gnome-calendar
    gnome-contacts
    gnome-software
    gnome-maps
    gnome-weather
    gnome-music
  ]);
}