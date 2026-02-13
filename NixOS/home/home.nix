{ config, pkgs, ... }:

{
	home.username = "Luna";
	home.homeDirectory = "/home/Luna";
	home.packages = with pkgs;[
		fastfetch
		yazi
		git
	];
	imports = [
		./emacs
		./niri
		./noctalia
		./kitty
		./zsh
		./fcitx5
		./swaybg
		./wlogout
		./hyprlock
		./waybar
		./wofi
		./fonts
		./firefox
	];
	home.stateVersion = "25.11";
}
