{ pkgs, config, ... }:

{
	imports = [
		./base.nix
		./fhs.nix
		./fonts.nix
	];
}