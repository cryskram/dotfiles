{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs
  ];
  
  shellHook = ''
    echo "Loaded Node enivonment";
  '';
}