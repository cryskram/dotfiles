{ pkgs, ... }:

pkgs.mkShell {
  name = "nodejs";

  buildInputs = with pkgs; [
    nodejs
    prisma
  ];
  
  shellHook = ''
    echo "Loaded Node shell" | ${pkgs.cowsay}/bin/cowsay | ${pkgs.lolcat}/bin/lolcat;
  '';
}