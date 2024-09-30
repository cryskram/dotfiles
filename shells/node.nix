{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs_22
  ];
  
  shellHook = ''
    echo "Loaded Node enivonment";
  '';
}