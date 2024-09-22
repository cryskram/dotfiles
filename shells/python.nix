{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = ( with pkgs; [
    python312
    pipenv
  ]) ++ ( with pkgs.python312Packages; [
    flask
  ]);

  shellHook = ''
    echo "Loaded Python Environment";
  '';
}