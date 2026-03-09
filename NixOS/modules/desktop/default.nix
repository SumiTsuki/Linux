{ pkgs, config, ... }:

{
	services.xserver.enable = false;
	programs.xwayland.enable = true;
	services.dbus.enable = true;
	hardware.graphics.enable = true;
	xdg.portal = {
		enable = true;
		extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
		config.common.default = "gtk";
	};
	services.pipewire = {
		enable = true;
		pulse.enable = true;
	};
}