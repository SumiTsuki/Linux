{ pkgs, ... }:

{
	fonts = {
		packages = with pkgs; [
			# icon fonts
			font-awesome
			material-design-icons

			# nerdfonts
			nerd-fonts.symbols-only
			nerd-fonts.jetbrains-mono
			nerd-fonts.fira-code

			# noto
			noto-fonts
			noto-fonts-cjk-sans
			noto-fonts-cjk-serif
			noto-fonts-color-emoji

			# source
			source-sans
			source-serif
			source-han-sans
			source-han-serif
			source-han-mono

			# maple
			maple-mono.NF
			maple-mono.NF-CN
			
		];
	};
}