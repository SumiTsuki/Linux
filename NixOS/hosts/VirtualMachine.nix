{ pkgs, config, ...}:

{
	imports = [
		../hardware-configuration.nix
		../modules/base.nix
	];
	networking.hostName = "NixOS";
	services.xserver.enable = false;
	services.dbus.enable = true;
	hardware.graphics.enable = true;
	services.pipewire = {
		enable = true;
		pulse.enable = true;
	};
	users.users.Luna = {
		isNormalUser = true;
		extraGroups = [ "wheel" ];
	};
	system.stateVersion = "25.11";
}