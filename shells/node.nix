{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs
  ];
  
  shellHook = ''
    echo "Loaded Node shell" | ${pkgs.cowsay}/bin/cowsay | ${pkgs.lolcat}/bin/lolcat;
  '';
}