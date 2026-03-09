{ pkgs, config, ... }:

{
	environment.systemPackages = with pkgs; [
		dae
		daed
	];
}