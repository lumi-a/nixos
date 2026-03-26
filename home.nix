{config, pkgs, ...}: {
  home.username = "lumi";
  home.homeDirectory = "/home/lumi";
  home.stateVersion = "25.11";
  
  programs.home-manager.enable = true;
  
  home.packages = with pkgs; [
    # clis
    ghostty
    tldr
    git
    ripgrep
    fd
    dust
    # for your future consideration
    # https://github.com/phiresky/ripgrep-all
    # jj
    # fzf stuff
    # anything old in profile.ps1
    
    
    # apps
    librewolf
    signal-desktop
    prismlauncher
  ];
  
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
    plugins = [
      # Enable a plugin (here grc for colorized command output) from nixpkgs
      # { name = "grc"; src = pkgs.fishPlugins.grc.src; }
    ];
  };
  
  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
  };
  
  programs.eza = {
    enable = true;
    enableFishIntegration = true;
    extraOptions = [ "--hyperlink" "--icons" "--group-directories-first" ];
  };
  
  programs.difftastic = {
    enable = true;
    git = {
      enable = true;
      diffToolMode = true;
    };
  };
  
  programs.bat = {
    enable = true;
    config = {
      style = "grid,header";
    };
  };
  
  programs.git = {
    enable = true;
    settings.user = {
        name = "lumi";
        email = "151774547+lumi-a@users.noreply.github.com";
    };
  };
  
  programs.gh = {
    enable = true;
  };
}

