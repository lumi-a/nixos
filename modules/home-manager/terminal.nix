{ ... }:
{
  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;
    installBatSyntax = true; # Not sure what this does, but can it be bad?
    settings = {
      font-family = "FiraCode Nerd Font";
      font-size = 16;
      keybind = [
        "performable:ctrl+v=paste_from_clipboard"
        "performable:ctrl+c=copy_to_clipboard"
        "ctrl+t=new_tab"
        "ctrl+w=close_surface"
        "ctrl+n=new_window"
        "ctrl+a=select_all"
        "ctrl+f=start_search"
      ];
      quit-after-last-window-closed = false;
    };
  };
}
