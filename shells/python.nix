{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = ( with pkgs; [
    python312
    pipenv
  ]) ++ ( with pkgs.python312Packages; [
    flask
  ]);

  shellHook = ''
    echo "Loaded python shell" | ${pkgs.cowsay}/bin/cowsay | ${pkgs.lolcat}/bin/lolcat;
  '';
}