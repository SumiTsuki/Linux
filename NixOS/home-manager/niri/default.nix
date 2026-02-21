{ pkgs, ... }:

{
	home.packages = with pkgs; [
		niri
	];
	home.file.".config/niri/config.kdl".source = ./config.kdl;
}
