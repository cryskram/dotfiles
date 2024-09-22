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
    echo "Loaded C enivonment";
  '';
}