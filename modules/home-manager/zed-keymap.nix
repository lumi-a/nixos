[
  {
    bindings = {
      ctrl-shift-tab = "pane::ActivatePreviousItem";
      ctrl-tab = "pane::ActivateNextItem";
    };
  }
  {
    bindings = {
      "ctrl-g shift-up" = null;
      ctrl-p = "git::Push";
    };
    context = "GitPanel";
  }
  {
    bindings = {
      ctrl-shift-g = "git_panel::Toggle";
    };
    context = "Workspace";
  }
]
