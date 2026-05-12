{ ... }:
{
  programs = {
    git = {
      enable = true;
      settings.user = {
        name = "lumi";
        email = "151774547+lumi-a@users.noreply.github.com";
      };
      settings.init.defaultBranch = "main";
    };

    gh = {
      enable = true;
      gitCredentialHelper.enable = true;
    };
  };
}
