{
  description = "Lumi's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
    }@inputs:
    {
      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt-tree;
      templates = {
        rust = {
          # Use:
          # nix flake init -t /etc/nixos#rust
          # direnv allow
          # cargo init
          path = ./templates/rust;
          description = "Rust development environment";
        };
      };
      nixosConfigurations.t14 = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs; # this passes down the inputs
        };
        modules = [
          ./hosts/t14/default.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.lumi = import ./home/lumi/default.nix;
            home-manager.extraSpecialArgs = inputs;
          }
        ];
      };
    };
}
