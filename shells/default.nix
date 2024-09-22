{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
  ];
  
  shellHook = ''
    echo "Welcome to dev shell";
    echo $COLOR;
  '';

  # environment variables
  COLOR = "yellow";
}