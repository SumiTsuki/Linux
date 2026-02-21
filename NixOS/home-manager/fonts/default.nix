{ pkgs, ... }:

{
	home.packages = with pkgs; [
		nerd-fonts.jetbrains-mono
		maple-mono.NF
		maple-mono.NF-CN
		noto-fonts
		noto-fonts-cjk-sans
		noto-fonts-cjk-serif
		noto-fonts-color-emoji
		source-han-sans
		source-han-serif
		font-awesome
	];
}
