{ config, pkgs, ... }:

{
  home.username = "lumi";
  home.homeDirectory = "/home/lumi";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
}
