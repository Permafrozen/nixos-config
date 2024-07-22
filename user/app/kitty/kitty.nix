{ config, pkgs, ...}:

{
  programs.kitty = {
    enable = true;

    settings = {};

    extraConfig = ''
      shell fish
      confirm_os_window_close 0
    '';
  };
}
