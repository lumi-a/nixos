{ pkgs, ... }:
{
  sticky_scroll.enabled = true;
  use_smartcase_search = true;
  terminal.detect_venv.on.activate_script = "fish";

  format_on_save = "on";

  lsp.rust-analyzer.initialization_options.check.command = "clippy";

  diff_view_style = "unified";

  ssh_connections = [
    {
      host = "desktop";
      port = 5432;
    }
  ];
  agent = {
    button = false;
  };
  agent_buffer_font_size = 18;
  agent_servers = {
    claude-acp = {
      type = "registry";
      env.CLAUDE_CODE_EXECUTABLE = "${pkgs.claude-code}/bin/claude";
    };
  };
  auto_install_extensions = {
    nix = true;
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
  disable_ai = true;
  file_finder = {
    modal_max_width = "medium";
  };
  git = {
    hunk_style = "unstaged_hollow";
    inline_blame = {
      enabled = false;
    };
    path_style = "file_path_first";
  };
  git_panel = {
    default_width = 300;
    status_style = "label_color";
  };
  gutter = {
    line_numbers = false;
    # This just makes the gutter thinner
    bookmarks = false;
    runnables = false;
    breakpoints = false;
    folds = false;
  };
  hover_popover_delay = 200;
  inlay_hints = {
    enabled = true;
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
  middle_click_paste = false;
  minimap = {
    show = "never";
  };
  outline_panel = {
    button = false;
  };
  project_panel = {
    bold_folder_labels = true;
    dock = "left";
    scrollbar = {
      show = "auto";
    };
  };
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
  show_signature_help_after_edits = true;
  soft_wrap = "editor_width";
  status_bar = {
    cursor_position_button = false;
  };
  tab_bar = {
    show_nav_history_buttons = false;
  };
  tabs = {
    activate_on_close = "neighbour";
    file_icons = true;
    git_status = true;
    show_close_button = "hidden";
    show_diagnostics = "errors";
  };
  telemetry = {
    diagnostics = false;
    metrics = false;
  };
  terminal = {
    button = false;
    cursor_shape = "bar";
  };
  theme = "Alabaster Dark";
  theme_overrides = {
    "Alabaster Dark" = {
      syntax = {
        comment.color = "#FFBBDDFF";
        keyword.font_weight = 800;
      };
    };
  };
  title_bar = {
    show_branch_name = false;
    show_onboarding_banner = false;
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
  when_closing_with_no_tabs = "keep_window_open";
  which_key = {
    enabled = true;
  };
}
