{ pkgs, config, ...}:

{
	imports = [
		../../hardware-configuration.nix
		../../modules/base
		../../modules/desktop
		../../modules/networking
	];
	networking.hostName = "NixOS";
	users.users.Luna = {
		isNormalUser = true;
		extraGroups = [ "wheel" ];
	};
	system.stateVersion = "25.11";
}