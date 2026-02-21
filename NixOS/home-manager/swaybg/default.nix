{ pkgs, ... }:

{
	home.packages = with pkgs; [
		swaybg
	];
	home.file.".config/wallpaper/wallpaper".source = ./wallpaper;
}
