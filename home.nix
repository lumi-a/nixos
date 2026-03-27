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
    dust
    kalker
    sd
    nil # Nix language server
    nixfmt
    helix
    uv

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
      ];

      # You can "auto-generate" this from the current config using:
      #   nix-instantiate --eval -E 'builtins.fromJSON (builtins.readFile /home/lumi/.config/zed/settings.json)' | nixfmt > zed-user-settings.nix
      #   https://discourse.nixos.org/t/how-to-generate-nix-source-from-json/28633/8
      # Remember to first set the following option to `true` before trying to edit settings in zed
      mutableUserSettings = false;
      userSettings = import ./zed-user-settings.nix;

      # You can "auto-generate" this from the current config using:
      #   nix-instantiate --eval -E 'builtins.fromJSON (builtins.readFile /home/lumi/.config/zed/keymap.json)' | nixfmt > zed-keymap.nix
      #   https://discourse.nixos.org/t/how-to-generate-nix-source-from-json/28633/8
      # Remember to first set the following option to `true` before trying to edit settings in zed
      mutableUserKeymaps = false;
      userKeymaps = import ./zed-keymap.nix;
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
      settings.init.defaultBranch = "main";
    };

    gh = {
      enable = true;
      gitCredentialHelper.enable = true;
    };
  };
}
