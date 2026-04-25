{ pkgs, ... }:
{
  active_pane_modifiers = {
    border_size = 0;
    inactive_opacity = 1;
  };
  agent = {
    button = false;
    favorite_models = [ ];
    model_parameters = [ ];
  };
  agent_buffer_font_size = 18;
  agent_servers = {
    claude-acp = {
      type = "registry";
      env.CLAUDE_CODE_EXECUTABLE = "${pkgs.claude-code}/bin/claude";
    };
  };
  always_treat_brackets_as_autoclosed = false;
  audio = {
    "experimental.auto_microphone_volume" = true;
    "experimental.rodio_audio" = true;
  };
  auto_install_extensions = {
    nix = true;
    ruff = true;
    rust = true;
    toml = true;
    typst = true;
  };
  auto_signature_help = true;
  auto_update = false;
  autosave = {
    after_delay = {
      milliseconds = 500;
    };
  };
  base_keymap = "VSCode";
  bottom_dock_layout = "contained";
  buffer_font_family = "FiraCode Nerd Font";
  buffer_font_size = 20;
  buffer_line_height = "standard";
  calls = {
    mute_on_join = true;
  };
  centered_layout = {
    left_padding = 0.2;
  };
  collaboration_panel = {
    button = false;
  };
  colorize_brackets = true;
  current_line_highlight = "line";
  debugger = {
    button = false;
  };
  diagnostics = {
    button = true;
    include_warnings = true;
    inline = {
      enabled = false;
    };
  };
  diagnostics_max_severity = "off";
  features = {
    copilot = false;
  };
  file_finder = {
    modal_max_width = "medium";
  };
  git = {
    git_gutter = "tracked_files";
    hunk_style = "unstaged_hollow";
    inline_blame = {
      enabled = false;
      show_commit_summary = false;
    };
    path_style = "file_path_first";
  };
  git_panel = {
    default_width = 300;
    diff_stats = true;
    dock = "right";
    status_style = "label_color";
    tree_view = false;
  };
  gutter = {
    line_numbers = true;
    min_line_number_digits = 3;
    runnables = true;
  };
  hour_format = "hour24";
  hover_popover_delay = 200;
  inlay_hints = {
    enabled = true;
    show_background = false;
  };
  inline_code_actions = false;
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
  middle_click_paste = false;
  minimap = {
    show = "never";
  };
  notification_panel = {
    button = false;
  };
  outline_panel = {
    button = false;
  };
  project_panel = {
    bold_folder_labels = true;
    button = true;
    default_width = 240;
    entry_spacing = "comfortable";
    folder_icons = false;
    git_status = true;
    hide_gitignore = false;
    hide_root = false;
    indent_guides = {
      show = "always";
    };
    indent_size = 20;
    scrollbar = {
      show = "auto";
    };
    starts_open = false;
  };
  relative_line_numbers = "enabled";
  rounded_selection = true;
  scrollbar = {
    axes = {
      horizontal = false;
    };
  };
  search = {
    button = false;
    center_on_match = true;
    regex = true;
  };
  seed_search_query_from_cursor = "never";
  semantic_tokens = "off";
  show_signature_help_after_edits = true;
  show_whitespaces = "selection";
  show_wrap_guides = true;
  soft_wrap = "editor_width";
  status_bar = {
    active_language_button = true;
    cursor_position_button = false;
  };
  tab_bar = {
    show = true;
    show_nav_history_buttons = false;
    show_pinned_tabs_in_separate_row = false;
    show_tab_bar_buttons = true;
  };
  tabs = {
    activate_on_close = "neighbour";
    file_icons = true;
    git_status = true;
    show_close_button = "hidden";
    show_diagnostics = "off";
  };
  telemetry = {
    diagnostics = false;
    metrics = false;
  };
  terminal = {
    button = false;
    cursor_shape = "bar";
    dock = "bottom";
    toolbar = {
      breadcrumbs = false;
    };
  };
  theme = {
    dark = "Ayu Dark";
    light = "Ayu Light";
    mode = "system";
  };
  title_bar = {
    show_branch_icon = false;
    show_branch_name = false;
    show_menus = false;
    show_onboarding_banner = true;
    show_project_items = false;
    show_sign_in = false;
    show_user_menu = false;
    show_user_picture = false;
  };
  toolbar = {
    agent_review = false;
    breadcrumbs = true;
    code_actions = false;
    quick_actions = false;
    selections_menu = false;
  };
  ui_font_family = "FiraGO";
  ui_font_size = 18;
  unnecessary_code_fade = 0.3;
  when_closing_with_no_tabs = "keep_window_open";
  which_key = {
    enabled = true;
  };
  window_decorations = "client";
  zoomed_padding = true;
}
