{ pkgs, ... }:
{
  home.packages = with pkgs; [
    tldr
    ripgrep
    fd
    dust
    kalker
    sd
    nil
    nixfmt
    uv
    pandoc
    glow
    micro
    git-absorb
    yazi
  ];

  home.sessionVariables = {
    EDITOR = "micro";
  };

  programs = {
    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };

    fish = {
      enable = true;
      interactiveShellInit = ''
        set fish_greeting # Disable greeting
        tput cup $LINES 0 # Move prompt to bottom
      '';
      plugins = [ ];
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
        config = "cd /etc/nixos; zeditor /etc/nixos";
      };
      shellAliases.l = "lll";
      functions = {
        lll = {
          body = ''
            if test (count $argv) -eq 0 # No arguments supplied
              ls
            else if test -d $argv[1] # Directory
              ls $argv
            else if string match -q "*.md" $argv[1] # Markdown
              glow $argv
            else
              bat $argv
            end;
          '';
          wraps = "ls";
        };

        y = {
          body = ''
            set tmp (mktemp -t "yazi-cwd.XXXXXX")
            command yazi $argv --cwd-file="$tmp"
            if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
              builtin cd -- "$cwd"
            end
            rm -f -- "$tmp"
          '';
          wraps = "yazi";
        };

        check-all-repos.body = ''
          set -l dirs $argv
          test (count $dirs) -eq 0; and set dirs ~ /etc/nixos

          fd '^\.git$' --hidden --type d --prune $dirs \
              --exclude .cache --exclude .config --exclude .local \
              --exclude .mozilla --exclude .var --exclude .steam\
          | sort | while read -l gitpath
              set -l repo (path dirname -- $gitpath)
              set -l dirty (command git -C $repo -c color.status=false status --porcelain 2>/dev/null)
              set -l stashed (command git -C $repo stash list 2>/dev/null | count)

              set -l c_color green
              set -l c_text "✓ No changes "
              if test -n "$dirty"
                  set c_color red
                  set c_text "✗ Uncommitted"
              end

              set -l s_color green
              set -l s_text "✓ No Stash"
              if test $stashed -gt 0
                  set s_color red
                  set s_text "✗ Stashed  "
              end

              if test "$c_color" = green; and test "$s_color" = green
                  set_color brblack
                  echo "$c_text  $s_text  $repo"
                  set_color normal
              else
                  set_color $c_color
                  printf "%s  " $c_text
                  set_color $s_color
                  printf "%s  " $s_text
                  set_color normal
                  echo $repo
              end
          end
        '';
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
        mode = "both";
      };
    };

    bat = {
      enable = true;
      config = {
        style = "grid,header";
      };
    };
  };
}
