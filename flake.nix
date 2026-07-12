{
  description = "Lumi's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
      home-manager,
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      formatter.x86_64-linux = pkgs.nixfmt-tree;

      homeConfigurations.base = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./modules/home-manager/shell.nix
          ./modules/home-manager/git.nix
          {
            home.username = "lumi";
            home.homeDirectory = "/home/lumi";
            home.stateVersion = "25.11";
            programs.home-manager.enable = true;
          }
        ];
      };
      templates = {
        # Use:
        # nix flake init -t /etc/nixos#rust
        # direnv allow
        # cargo init
        rust = {
          path = ./templates/rust;
          description = "Rust development environment";
        };
        typst = {
          path = ./templates/typst;
          description = "Typst compilation environment";
        };
      };
      nixosConfigurations.t14 = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs;
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

      nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs;
        };
        modules = [
          ./hosts/desktop/default.nix
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
