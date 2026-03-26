{pkgs, ...}:
{
  fonts = {
    fontconfig = {
      enable = true;
    };
    packages = with pkgs; [
      noto-fonts
      noto-fonts-emoji-blob-bin
      noto-fonts-cjk-sans
      fira-go
      nerd-fonts.fira-code
      nerd-fonts.symbols-only
    ];
  };
}

