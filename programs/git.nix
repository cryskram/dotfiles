{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "cryskram";
    userEmail = "vageeshgn2005@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      # safe.directory = "/nix/store/cpgyn3rn3a117nv4s1g7j5ajgbdkplby-flutter-wrapped-3.24.1-sdk-links";
    };
  };
}
