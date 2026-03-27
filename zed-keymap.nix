[
  {
    bindings = { };
    context = "Workspace";
  }
  {
    bindings = { };
    context = "Editor && vim_mode == insert";
  }
  {
    bindings = {
      ctrl-tab = "pane::ActivateNextItem";
    };
  }
  {
    bindings = {
      ctrl-shift-tab = "pane::ActivatePreviousItem";
    };
  }
  {
    bindings = {
      ctrl-p = "git::Push";
    };
    context = "GitPanel";
  }
  {
    bindings = {
      "ctrl-g shift-up" = null;
    };
    context = "GitPanel";
  }
  {
    bindings = {
      ctrl-shift-g = "git_panel::FocusEditor";
    };
    context = "!(GitPanel && (CommitEditor > Editor))";
  }
]
