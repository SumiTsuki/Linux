{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager/master";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};
	outputs = inputs@{ nixpkgs, home-manager, ... }: {
		nixosConfigurations = {
			NixOS = nixpkgs.lib.nixosSystem {
				modules = [
					./nixos/configuration.nix
					home-manager.nixosModules.home-manager
					{
						home-manager.useGlobalPkgs = true;
						home-manager.useUserPackages = true;
						home-manager.users.Luna = import ./home/home.nix;
					}
				];
			};
		};
	};
}
