{ ... }:
{
  programs = {
    git = {
      enable = true;
      settings = {
        user = {
          name = "lumi";
          email = "151774547+lumi-a@users.noreply.github.com";
        };
        init.defaultBranch = "main";
      };
      signing.signByDefault = true;
    };

    gh = {
      enable = true;
      gitCredentialHelper.enable = true;
    };
  };
}
