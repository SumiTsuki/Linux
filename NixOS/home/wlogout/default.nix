{ pkgs, config, ... }:

{
	home.packages = with pkgs; [
		wlogout
	];

	programs.wlogout.enable = true;

	programs.wlogout.layout = [
		{
			label = "lock";
			action = "hyprlock";
			text = "LockScreen";
			keybind = "l";
		}
		{
			label = "logout";
			action = "loginctl terminate-user ${config.home.username}";
			text = "Logout";
			keybind = "e";
		}
		{
			label = "reboot";
			action = "systemctl reboot";
			text = "Reboot";
			keybind = "r";
		}
		{
			label = "shutdown";
			action = "systemctl poweroff";
			text = "Shutdown";
			keybind = "s";
		}
	];
	programs.wlogout.style = ''
		* {
			background-image: none;
			box-shadow: none;
		}

		window {
			background: linear-gradient(rgba(75, 75, 100, 0.3));
			font-size: 0px;
		}

		button {
			background-color: transparent;
			background-repeat: no-repeat;
			background-position: center;
			background-size: 40%;
			padding: 0px 10px;
			border: 2px solid transparent;
			transition: all 300ms ease-out;
			animation-timing-function: steps(24);
		}

		button:active,
		button:hover {
			font-size: 30px;
			color: white;
			padding: 0px 40px;
			margin: 10px 0px 10px 0px;
			border-radius: 25px;
			border-color: rgba(255, 255, 255, 0.6);
			box-shadow: inset 0 0 10px rgba(255, 255, 255, 0.5);
			background-color: transparent;
			background-repeat: no-repeat;
			background-position: center;
			background-size: 45%;
			transition: all 0.3s ease-out;
			animation-timing-function: steps(24);
		}

		#lock {
			margin: 40px 20px 40px 20px;
			padding: 0px 10px;
			background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/lock.png"));
		}

		#reboot {
			margin: 40px 20px 40px 20px;
			background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/reboot.png"));
		}

		#logout {
			margin: 40px 20px 40px 20px;
			background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/logout.png"));
		}

		#shutdown {
			margin: 40px 20px 40px 20px;
			background-image: image(url("${pkgs.wlogout}/share/wlogout/icons/shutdown.png"));
		}
	'';
}
