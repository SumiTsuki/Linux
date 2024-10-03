{ inputs, outputs, lib, config, pkgs, ... }:
{
  imports = [
  ];
  
  nixpkgs = {
    overlays = [
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages
    ];
    config = {
      allowUnfree = true;
    };
  };
  
  home = {
    username = "NixOS";
    homeDirectory = "/home/NixOS";
  };
  programs.home-manager.enable = true;
  programs.git.enable = true;
  systemd.user.startServices = "sd-switch";
  home.stateVersion = "24.05";
}
