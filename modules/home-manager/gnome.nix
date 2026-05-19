{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    gnomeExtensions.disable-hover-on-app-window-switcher-popups-for-45 # by default, hovering any app on alt+tab, and then releasing alt+tab _focuses that app_. I frequently mess around with my mouse while alt-tabbing, so this is annoying.
    gnomeExtensions.steal-my-focus-window # Allows windows to steal focus, instead of notifying "window is ready".
    gnomeExtensions.middle-click-to-close-in-overview
    gnomeExtensions.run-or-raise # Window switcher
  ];

  services.syncthing = {
    # http://localhost:8384/
    enable = true;
  };

  # Horrible way of making fira-go readable to koreader. sigh.
  home.file.".local/share/fonts".source =
    let
      koreaderFonts = pkgs.symlinkJoin {
        name = "koreader-fonts";
        paths = with pkgs; [
          fira-go
          nerd-fonts.fira-code
        ];
      };
    in
    "${koreaderFonts}/share/fonts";

  # Window switch hotkeys. See keyd as well.
  xdg.configFile."run-or-raise/shortcuts.conf".text = ''
    <Super>e,librewolf,librewolf
    <Super>t,signal-desktop,signal
    <Super>i,ghostty,ghostty
    <Super>y,zeditor,zed
  '';

  xdg.userDirs = {
    setSessionVariables = false;
    enable = true;
    createDirectories = false;
    # CULL
    pictures = config.home.homeDirectory;
    videos = config.home.homeDirectory;
    music = config.home.homeDirectory;
    publicShare = config.home.homeDirectory;
    download = config.home.homeDirectory;
    documents = config.home.homeDirectory;
    templates = config.home.homeDirectory;
    desktop = config.home.homeDirectory;
  };

  dconf.settings = {
    # By default, gnome switches between _apps_ instead of _windows_ using alt+tab.
    # As such, if you have two librewolf windows open, you cannot switch between them using alt-tab.
    "org/gnome/desktop/wm/keybindings" = {
      switch-windows = [ "<Alt>Tab" ];
      switch-windows-backward = [ "<Alt><Shift>Tab" ];
      switch-applications = [ "<Super>Tab" ];
      switch-applications-backward = [ "<Super><Shift>Tab" ];
    };

    "org/gnome/shell" = {
      enabled-extensions = [
        pkgs.gnomeExtensions.disable-hover-on-app-window-switcher-popups-for-45.extensionUuid
        pkgs.gnomeExtensions.steal-my-focus-window.extensionUuid
        pkgs.gnomeExtensions.middle-click-to-close-in-overview.extensionUuid
        pkgs.gnomeExtensions.run-or-raise.extensionUuid
      ];
    };
  };
}
