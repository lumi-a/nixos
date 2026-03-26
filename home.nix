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
    gh
    eza
    fzf
    xclip
    
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

