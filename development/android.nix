{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        flutter
        android-studio
        jdk17
        gnumake
        cmake
        ninja
        pkg-config
        gtk3
        pcre
        glibc
        xz
        libkrb5
        libGL
        
        vscode
    ];

    programs.adb.enable = true;

    virtualisation.libvirtd.enable = true;

    environment.sessionVariables = {
        ANDROID_SDK_ROOT = "/home/vageesh/Android/Sdk";
        CHROME_EXECUTABLE = "${pkgs.google-chrome}/bin/google-chrome-stable";
    };

    environment.extraInit = ''
        export PATH="$PATH:${pkgs.flutter}/bin"
    '';
}
