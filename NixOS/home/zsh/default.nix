{ pkgs, ...  }:

{
	home.file.".p10k.zsh".source = ./.p10k.zsh;
	programs.zsh = {
		enable = true;
		enableCompletion = true;
		syntaxHighlighting.enable = true;
		autosuggestion.enable = true;
		initContent = ''
			source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
		[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
		'';
	};
	home.packages = with pkgs; [
		zsh-powerlevel10k
		zsh-completions
	];
}
