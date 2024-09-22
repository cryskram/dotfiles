{ config, pkgs, ... }:

{
  gtk = {
    enable = true;
    cursorTheme = {
      name = "Vimix-cursors";
      package = pkgs.vimix-cursors;
    };
    iconTheme = {
      name = "Tela-yellow-dark";
      package = pkgs.tela-icon-theme;
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    
    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };
}