{
  description = "Nixos system config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system} = {
        default = ( import ./shells/default.nix { inherit pkgs; } );
        c = ( import ./shells/c.nix { inherit pkgs; } );
        python = ( import ./shells/python.nix { inherit pkgs; } );
        node = ( import ./shells/node.nix { inherit pkgs; } );
        rust = ( import ./shells/rust.nix { inherit pkgs; } );
      };      
      
      # NixOS system configuration
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix
          inputs.home-manager.nixosModules.default
        ];
      };
  };
}
