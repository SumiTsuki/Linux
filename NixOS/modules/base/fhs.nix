{ config, pkgs, lib, ... }:

{
	environment.systemPackages = with pkgs; [
		(let base = pkgs.appimageTools.defaultFhsEnvArgs; in
			pkgs.buildFHSEnv (base // {
			name = "fhs";
			targetPkgs = pkgs:
			(base.targetPkgs pkgs) ++ (with pkgs; [
				pkg-config
				ncurses
				cmake
			]
		);
		profile = "export FHS=1";
		runScript = "zsh";
		extraOutputsToInstall = ["dev"];
		}))
	];
}