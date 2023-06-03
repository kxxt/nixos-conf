{
  description = "kxxt's NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR";
    sops-nix.url = "github:Mic92/sops-nix";
    sops-nix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, nur, sops-nix }:
    let
      systemConfig = nixpkgs.lib.nixosSystem;
    in
    {
      nixosConfigurations."spectre" = systemConfig {
        modules = [
          sops-nix.nixosModules.sops
          nur.nixosModules.nur
          ./machines/spectre/spectre.nix
          ./profiles/laptop/laptop.nix
          ./users/kxxt.nix
        ];
      };
    };
}
