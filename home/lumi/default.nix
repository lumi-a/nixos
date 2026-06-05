{
  config,
  pkgs,
  lib,
  ...
}:
{
  imports = [
    ../../modules/home-manager/shell.nix
    ../../modules/home-manager/git.nix
    ../../modules/home-manager/editor.nix
    ../../modules/home-manager/terminal.nix
    ../../modules/home-manager/gnome.nix
    ../../modules/home-manager/librewolf.nix
  ];

  home.username = "lumi";
  home.homeDirectory = "/home/lumi";
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    vscodium
    claude-code
    koreader
    brave
    signal-desktop
    prismlauncher
  ];

  programs.home-manager.enable = true;
}
