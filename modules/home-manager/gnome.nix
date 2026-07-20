{
  config,
  pkgs,
  lib,
  ...
}:
{
  home.packages = with pkgs; [
    gnomeExtensions.disable-hover-on-app-window-switcher-popups-for-45 # by default, hovering any app on alt+tab, and then releasing alt+tab _focuses that app_. I frequently mess around with my mouse while alt-tabbing, so this is annoying.
    gnomeExtensions.steal-my-focus-window # Allows windows to steal focus, instead of notifying "window is ready".
    gnomeExtensions.middle-click-to-close-in-overview
    gnomeExtensions.run-or-raise # Window switcher
    gnomeExtensions.no-screenshot-box # Snaps on drag end, instead of having to hit the button
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

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-gnome ];
    config.common = {
      default = [
        "gnome"
        "gtk"
      ];
      "org.freedesktop.impl.portal.ScreenCast" = [ "gnome" ];
      "org.freedesktop.impl.portal.RemoteDesktop" = [ "gnome" ];
      "org.freedesktop.impl.portal.Screenshot" = [ "gnome" ];
    };
  };

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
      close = [ "<Control>q" ];
    };

    "org/gnome/desktop/interface" = {
      accent-color = "pink";
      color-scheme = "default";
      enable-animations = true;
      enable-hot-corners = false;
      text-scaling-factor = 1.25;
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      delay = lib.hm.gvariant.mkUint32 192;
      repeat-interval = lib.hm.gvariant.mkUint32 32;
    };
    "org/gnome/desktop/peripherals/mouse".natural-scroll = false;
    "org/gnome/desktop/peripherals/pointingstick" = {
      accel-profile = "default";
      speed = 0.0;
    };

    "org/gnome/desktop/session".idle-delay = lib.hm.gvariant.mkUint32 0;
    "org/gnome/settings-daemon/plugins/power" = {
      idle-dim = false;
      sleep-inactive-ac-type = "nothing";
      sleep-inactive-battery-timeout = 3600;
      sleep-inactive-battery-type = "suspend";
    };

    "org/gnome/nautilus/preferences" = {
      click-policy = "single";
      date-time-format = "detailed";
      default-folder-viewer = "list-view";
    };

    "org/gnome/shell/extensions/run-or-raise".switch-back-when-focused = true;

    "org/gnome/shell" = {
      enabled-extensions = [
        pkgs.gnomeExtensions.disable-hover-on-app-window-switcher-popups-for-45.extensionUuid
        pkgs.gnomeExtensions.steal-my-focus-window.extensionUuid
        pkgs.gnomeExtensions.middle-click-to-close-in-overview.extensionUuid
        pkgs.gnomeExtensions.run-or-raise.extensionUuid
        pkgs.gnomeExtensions.no-screenshot-box.extensionUuid
      ];
    };
  };
}
