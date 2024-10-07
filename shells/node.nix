{ pkgs, ... }:

pkgs.mkShell {
  name = "nodejs";

  buildInputs = with pkgs; [
    nodejs
    nodePackages_latest.prisma
  ];
  
  shellHook = ''
    echo "Loaded Node shell" | ${pkgs.cowsay}/bin/cowsay | ${pkgs.lolcat}/bin/lolcat;

    export PRISMA_QUERY_ENGINE_LIBRARY=${pkgs.prisma-engines}/lib/libquery_engine.node;
    export PRISMA_QUERY_ENGINE_BINARY=${pkgs.prisma-engines}/bin/query-engine;
    export PRISMA_SCHEMA_ENGINE_BINARY=${pkgs.prisma-engines}/bin/schema-engine;
  '';
}