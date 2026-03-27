{ config, pkgs, ... }:
{
  home.username = "lumi";
  home.homeDirectory = "/home/lumi";
  home.stateVersion = "25.11";
  home.packages = with pkgs; [
    # clis
    tldr
    git
    ripgrep
    fd
    dust
    kalker
    sd
    # for your future consideration
    # jj
    # fzf stuff
    # anything old in profile.ps1
    # yazi
    # home-managerify librewolf

    # apps
    librewolf
    signal-desktop
    prismlauncher
  ];

  programs = {
    home-manager.enable = true;

    ghostty = {
      enable = true;
      enableFishIntegration = true;
      installBatSyntax = true; # Not sure what this does, but can it be bad?
      settings = {
        font-family = "FiraCode Nerd Font";
        font-size = "16";
        keybind = [
          "performable:ctrl+v=paste_from_clipboard"
          "performable:ctrl+c=copy_to_clipboard"
          "ctrl+t=new_tab"
          "ctrl+w=close_surface"
          "ctrl+n=new_window"
        ];
        quit-after-last-window-closed = false;
      };
    };

    zed-editor = {
      enable = true;
      mutableUserDebug = false;
      mutableUserKeymaps = false;
      mutableUserSettings = false;
      mutableUserTasks = false;
      extensions = [
        "zed"
      ];
      userSettings = {
        features = {
          copilot = false;
        };
        telemetry = {
          metrics = false;
        };
        vim_mode = false;
        ui_font_size = 16;
        buffer_font_size = 16;
      };
    };

    fish = {
      enable = true;
      interactiveShellInit = ''
        set fish_greeting # Disable greeting
      '';
      plugins = [
        # Enable a plugin (here grc for colorized command output) from nixpkgs
        # { name = "grc"; src = pkgs.fishPlugins.grc.src; }
      ];
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
    };

    gh = {
      enable = true;
      gitCredentialHelper.enable = true;
    };
  };
}
