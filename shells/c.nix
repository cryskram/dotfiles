{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    gcc
    gnumake
    gdb
    cmake
    valgrind
  ];
  
  shellHook = ''
    echo "Loaded C shell" | ${pkgs.cowsay}/bin/cowsay | ${pkgs.lolcat}/bin/lolcat;
  '';
}