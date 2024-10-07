{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget htop neofetch scrcpy git eza bat xdg-utils
 
    google-chrome
    vscode
    vlc
    spotify
    libreoffice-still
    android-studio
    
    fish starship

    adw-gtk3
    touchegg

    gtk3

    gitmoji-cli

    openssl
  ];
}