{ config, pkgs, ... }:

{
	home.username = "Luna";
	home.homeDirectory = "/home/Luna";
	home.packages = with pkgs;[
		fastfetch
		yazi
		git
		gtk4
	];
	imports = [
		./emacs
		./niri
		./noctalia
		./kitty
		./zsh
		./fcitx5
		./swaybg
		./swaylock
		./waybar
		./wofi
		./fonts
		./firefox
	];
	home.stateVersion = "25.11";
}
