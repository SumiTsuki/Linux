{ pkgs, ... }:

{
	home.packages = with pkgs; [
		emacs-pgtk
		nil
		clang-tools
		pyright
	];
	home.file.".config/emacs" = {
		source = ./emacs;
		recursive = true;
	};
}
