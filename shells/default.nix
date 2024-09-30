{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
  ];
  
  shellHook = ''
    echo "Welcome to dev shell" | ${pkgs.cowsay}/bin/cowsay | ${pkgs.lolcat}/bin/lolcat;
    echo "";
    echo $MESSAGE | ${pkgs.lolcat}/bin/lolcat;
  '';

  # environment variables
  MESSAGE = "This is the default shell";
}