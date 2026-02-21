{ pkgs, config, ... }:

{
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
	networking.networkmanager.enable = true;
	time.timeZone = "Asia/Shanghai";
	i18n.defaultLocale = "en_US.UTF-8";
	console = {
		font = "Lat2-Terminus16";
		keyMap = "us";
	};
	environment.systemPackages = with pkgs; [
		vim
		git
		wget
		curl
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
}