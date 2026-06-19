{
  config,
  pkgs,
  lib,
  nixpkgs-unstable,
  ...
}:
let
  unstable = import nixpkgs-unstable {
    inherit (pkgs) system;
    config.allowUnfree = true;
  };
in
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
      # Download Celeste from itch.io and add it to the nix-store via:
      #   nix-store --add-fixed sha256 celeste-linux.zip
      withEverest = true;
      everest = unstable.everest;
      writableDir = "/home/lumi/celeste/writable";
      gameDir = "/home/lumi/celeste/game";
    })
    (olympus.override {
      finderHints = "/home/lumi/celeste/game";
    })
  ];

  programs.home-manager.enable = true;
}
