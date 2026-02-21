{ pkgs, ... }:

{
	i18n.inputMethod = {
		type = "fcitx5";
		enable = true;
		fcitx5 = {
			waylandFrontend = true;
			addons = with pkgs; [
				fcitx5-nord
				fcitx5-tokyonight
				(fcitx5-rime.override {
					rimeDataPkgs = [
						pkgs.rime-ice
					];
				})
			];
		};
	};
	home.file.".local/share/fcitx5/rime/default.custom.yaml" = {
		source = ./default.custom.yaml;
		force = true;
	};
}
