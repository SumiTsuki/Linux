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
					./hosts/VirtualMachine.nix
					home-manager.nixosModules.home-manager
					{
						home-manager.useGlobalPkgs = true;
						home-manager.useUserPackages = true;
						home-manager.users.Luna = import ./home-manager/Luna.nix;
					}
				];
			};
		};
	};
}
