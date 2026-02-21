{ pkgs, ... }:

{
	home.packages = with pkgs; [
		kitty
	];
	home.file.".config/kitty/kitty.conf".source = ./kitty.conf;
	home.file.".config/kitty/TokyoNightMoon.conf".source = ./TokyoNightMoon.conf;
}
