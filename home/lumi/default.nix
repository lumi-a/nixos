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
  ];

  home.username = "lumi";
  home.homeDirectory = "/home/lumi";
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    vscodium
    claude-code
    koreader
    librewolf
    brave
    signal-desktop
    prismlauncher
    (celestegame.override {
      withEverest = true;
      writableDir = "/home/lumi/celeste/writable";
      gameDir = "/home/lumi/celeste/game";
    })
    (olympus.override {
      finderHints = "/home/lumi/celeste/game";
    })
  ];

  programs.home-manager.enable = true;
}
