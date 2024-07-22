{ config, pkgs, ... }:

{
  imports = [

  ../../user/wm/hyprland/hyprland.nix
  ../../user/app/kitty/kitty.nix
  ../../user/shell/fish/fish.nix

  ];

  # Information what to manage
  home.username = "matteo";
  home.homeDirectory = "/home/matteo";

  # Home Manager release for this config, do not change without reading release notes!!!
  home.stateVersion = "24.05";

  # Packages, these will be combined with the ones in configuration.nix and the home.packages of other files
  home.packages = [
    pkgs.kitty
    pkgs.fish
    pkgs.qutebrowser
    pkgs.acpi
  ];

  # git config
  programs.git = {
    enable = true;
    userName = "Matteo";
    userEmail = "m8tt8o@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
