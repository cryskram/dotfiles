{ pkgs, ... }:

pkgs.mkShell {
  name = "rust";

  buildInputs = with pkgs; [
    rustc
    rustup
    rustfmt
  ];
  
  shellHook = ''
    echo "Loaded Rust shell" | ${pkgs.cowsay}/bin/cowsay | ${pkgs.lolcat}/bin/lolcat;
  '';
}