{
  auto_install_extensions = {
    nix = true;
    rust = true;
    toml = true;
  };
  auto_update = false;
  base_keymap = "VSCode";
  buffer_font_size = 16;
  features = {
    copilot = false;
  };
  hour_format = "hour24";
  languages = {
    Nix = {
      formatter = {
        external = {
          arguments = [
            "--quiet"
            "--"
          ];
          command = "nixfmt";
        };
      };
      language_servers = [
        "nil"
        "!nixd"
      ];
    };
  };
  load_direnv = "shell_hook";
  lsp = {
    nix = {
      binary = {
        path_lookup = true;
      };
    };
  };
  telemetry = {
    metrics = false;
  };
  theme = {
    dark = "One Dark";
    light = "One Light";
    mode = "system";
  };
  ui_font_size = 16;
  vim_mode = false;
}
