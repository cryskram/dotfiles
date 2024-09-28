{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "cryskram";
    userEmail = "vageeshgn2005@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = "/nix/store/vdlr4bw9p16xcd32gzx9pamfmyvcgiqw-flutter-wrapped-3.22.0-sdk-links";
    };
  };
}
