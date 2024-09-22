{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "cryskram";
    userEmail = "vageeshgn2005@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}