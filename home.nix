{ config, pkgs, ... }:
{
  home.username = "lumi";
  home.homeDirectory = "/home/lumi";
  home.stateVersion = "25.11";
  home.packages = with pkgs; [
    # clis
    tldr
    ripgrep
    fd
    dust # disk usage analyzer
    kalker # sweet mathematical calculator repl
    sd
    nil # Nix language server
    nixfmt
    uv
    pandoc
    glow # markdown renderer
    helix # helix text editor
    micro # more comfortable editor than nano
    vscodium
    git-absorb
    discordo

    # gnome extensions
    gnomeExtensions.disable-hover-on-app-window-switcher-popups-for-45 # by default, hovering any app on alt+tab, and then releasing alt+tab _focuses that app_. I frequently mess around with my mouse while alt-tabbing, so this is annoying.
    gnomeExtensions.steal-my-focus-window # Allows windows to steal focus, instead of notifying "window is ready".
    gnomeExtensions.middle-click-to-close-in-overview

    # apps
    librewolf
    brave
    signal-desktop
    prismlauncher
  ];

  home.sessionVariables = {
    EDITOR = "micro";
  };

  services = {
    syncthing = {
      # http://localhost:8384/
      enable = true;
    };
  };

  programs = {
    home-manager.enable = true;

    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };

    ghostty = {
      enable = true;
      enableFishIntegration = true;
      installBatSyntax = true; # Not sure what this does, but can it be bad?
      settings = {
        font-family = "FiraCode Nerd Font";
        font-size = 16;
        keybind = [
          "performable:ctrl+v=paste_from_clipboard"
          "performable:ctrl+c=copy_to_clipboard"
          "ctrl+t=new_tab"
          "ctrl+w=close_surface"
          "ctrl+n=new_window"
          "ctrl+a=select_all"
          "ctrl+f=start_search"
        ];
        quit-after-last-window-closed = false;
      };
    };

    zed-editor = {
      enable = true;
      mutableUserDebug = false;
      mutableUserTasks = false;
      extensions = [
        "nix"
        "toml"
        "rust"
        "ruff"
        "typst"
      ];

      # You can "auto-generate" this from the current config using:
      #   nix-instantiate --eval -E 'builtins.fromJSON (builtins.readFile /home/lumi/.config/zed/settings.json)' | nixfmt > /etc/nixos/zed-user-settings.nix
      #   https://discourse.nixos.org/t/how-to-generate-nix-source-from-json/28633/8
      # Remember to first set the following option to `true` before trying to edit settings in zed
      mutableUserSettings = false;
      userSettings = import ./zed-user-settings.nix;

      # You can "auto-generate" this from the current config using:
      #   nix-instantiate --eval -E 'builtins.fromJSON (builtins.readFile /home/lumi/.config/zed/keymap.json)' | nixfmt > /etc/nixos/zed-keymap.nix
      #   https://discourse.nixos.org/t/how-to-generate-nix-source-from-json/28633/8
      # Remember to first set the following option to `true` before trying to edit settings in zed
      mutableUserKeymaps = false;
      userKeymaps = import ./zed-keymap.nix;
    };

    fish = {
      enable = true;
      interactiveShellInit = ''
        set fish_greeting # Disable greeting
        tput cup $LINES 0 # Move prompt to bottom
      '';
      plugins = [
        # Enable a plugin (here grc for colorized command output) from nixpkgs
        # { name = "grc"; src = pkgs.fishPlugins.grc.src; }
      ];
      shellAbbrs = {
        rebuild = "sudo nixos-rebuild switch";
        nxr = {
          setCursor = true;
          expansion = "nix run nixpkgs#%";
        };
        nxs = {
          setCursor = true;
          expansion = "nix shell nixpkgs#%";
        };
        gitc = {
          expansion = "git commit -am \"%\"";
          setCursor = true;
        };
        gita = "git commit -a --amend";
        rip = "gio trash";
        zed = "zeditor";
      };
      functions = {
        l = {
          body = ''
            if test (count $argv) -eq 0
              ls
            else if test -d $argv[1]
              ls $argv
            else if string match -q "*.md" $argv[1]
              glow $argv
            else
              bat $argv
            end
          '';
        };
      };
    };

    starship = {
      enable = true;
      enableFishIntegration = true;
    };

    fzf = {
      enable = true;
      enableFishIntegration = true;
    };

    zoxide = {
      enable = true;
      enableFishIntegration = true;
    };

    eza = {
      enable = true;
      enableFishIntegration = true;
      extraOptions = [
        "--hyperlink"
        "--icons"
        "--group-directories-first"
      ];
    };

    difftastic = {
      enable = true;
      git = {
        enable = true;
        diffToolMode = true;
      };
    };

    bat = {
      enable = true;
      config = {
        style = "grid,header";
      };
    };

    git = {
      enable = true;
      settings.user = {
        name = "lumi";
        email = "151774547+lumi-a@users.noreply.github.com";
      };
      settings.init.defaultBranch = "main";
    };

    gh = {
      enable = true;
      gitCredentialHelper.enable = true;
    };

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
      ];
    };
  };
}
