{ pkgs, ... }:

pkgs.mkShell {
  name = "python";

  buildInputs = ( with pkgs; [
    python312
    pipenv
  ]) ++ ( with pkgs.python312Packages; [
    flask
    numpy
    matplotlib
  ]);

  shellHook = ''
    echo "Loaded python shell" | ${pkgs.cowsay}/bin/cowsay | ${pkgs.lolcat}/bin/lolcat;
  '';
}
