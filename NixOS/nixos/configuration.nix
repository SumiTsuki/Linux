{ config, lib, pkgs, ... }:

{
	imports =
		[
			./hardware-configuration.nix
		];

	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
	networking.hostName = "NixOS";
	networking.networkmanager.enable = true;
	time.timeZone = "Asia/Shanghai";
	i18n.defaultLocale = "en_US.UTF-8";
	console = {
		font = "Lat2-Terminus16";
		keyMap = "us";
	};
	services.pipewire = {
		enable = true;
		pulse.enable = true;
	};
	users.users.Luna = {
		isNormalUser = true;
		extraGroups = [ "wheel" ];
	};
	environment.systemPackages = with pkgs; [
		vim
		git
		wget
	];
	programs.neovim = {
		enable = true;
		configure = {
			customRC = ''
				set tabstop=4
				set shiftwidth=4
				set noexpandtab
			'';
		};
	};
	services.xserver.enable = false;
	services.dbus.enable = true;
	hardware.graphics.enable = true;
	nix.settings.experimental-features = [ "nix-command" "flakes" ];
	system.stateVersion = "25.11";
}

