{ pkgs, ... }:
{
  programs.zed-editor = {
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
    #   nix-instantiate --eval -E 'builtins.fromJSON (builtins.readFile /home/lumi/.config/zed/settings.json)' | nixfmt > /etc/nixos/modules/home-manager/zed-user-settings.nix
    #   https://discourse.nixos.org/t/how-to-generate-nix-source-from-json/28633/8
    # Remember to first set the following option to `true` before trying to edit settings in zed
    mutableUserSettings = false;
    userSettings = import ./zed-user-settings.nix { pkgs = pkgs; };

    # You can "auto-generate" this from the current config using:
    #   nix-instantiate --eval -E 'builtins.fromJSON (builtins.readFile /home/lumi/.config/zed/keymap.json)' | nixfmt > /etc/nixos/modules/home-manager/zed-keymap.nix
    #   https://discourse.nixos.org/t/how-to-generate-nix-source-from-json/28633/8
    # Remember to first set the following option to `true` before trying to edit settings in zed
    mutableUserKeymaps = false;
    userKeymaps = import ./zed-keymap.nix;
  };
}
