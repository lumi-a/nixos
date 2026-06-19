{
  config,
  pkgs,
  lib,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/keyd.nix
    ../../modules/nixos/fonts.nix
  ];

  nixpkgs.hostPlatform = "x86_64-linux";

  services.fwupd.enable = true;

  boot.loader = {
    efi.canTouchEfiVariables = true;
    systemd-boot.enable = true;
  };

  zramSwap.enable = true;

  networking.hostName = "desktop";
  networking.networkmanager.enable = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  time.timeZone = "Europe/Berlin";

  # Enable something like DNS?
  services.resolved.enable = true;

  # Keeps ssd nice and fresh
  services.fstrim = {
    enable = true;
    interval = "weekly";
  };

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  services.xserver.enable = true;

  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;
  environment.gnome.excludePackages = with pkgs; [
    epiphany # Former web browser
  ];

  services.xserver.xkb = {
    layout = "de";
    variant = "";
  };

  console.keyMap = "de";

  services.printing.enable = true;

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  users.users.lumi = {
    isNormalUser = true;
    description = "Lumi";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.fish;
  };

  programs.fish.enable = true;
  programs.nix-ld.enable = true; # # https://nix.dev/guides/faq#how-to-run-non-nix-executables

  environment.systemPackages = with pkgs; [ ];

  services.tailscale = {
    enable = true;
    extraDaemonFlags = [ "--no-logs-no-support" ];
  };
  networking.firewall = {
    enable = true;
    interfaces.tailscale0.allowedTCPPorts = [
      5432
      1234
    ];
    allowedUDPPorts = [ config.services.tailscale.port ];
  };

  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "claude-code"
      "celeste"
      "celeste-unwrapped"
    ];

  services.openssh = {
    enable = true;
    ports = [ 5432 ];
    openFirewall = false;
    settings = {
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "no";
      AllowUsers = [ "lumi" ];
    };
  };
  services.fail2ban.enable = true;

  #  Before changing, read https://nixos.org/nixos/options
  system.stateVersion = "25.11";
}
