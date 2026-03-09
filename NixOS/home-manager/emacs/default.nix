{ pkgs, ... }:

{
	home.packages = with pkgs; [
		emacs-pgtk
		nixd
		clang-tools
		pyright
	];
	home.file.".config/emacs" = {
		source = ./emacs;
		recursive = true;
	};
}
