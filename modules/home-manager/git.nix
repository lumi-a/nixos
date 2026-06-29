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
        gpg.format = "ssh";
        init.defaultBranch = "main";
      };
      signing = {
        key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOuCXlfPiC69V6SJd6T8lypJuWkU1SuwoUuIKmh5NhrA lumi@github-bitwarden-2026-06-29";
        signByDefault = true;
      };
    };

    gh = {
      enable = true;
      gitCredentialHelper.enable = true;
    };
  };
}
