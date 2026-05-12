## Structure

```
hosts/t14/          machine-specific system config (boot, hardware, networking, locale…)
modules/nixos/      system-level modules (fonts, keyboard remapping)
modules/home-manager/
  shell.nix         fish + CLI tools (ripgrep, fd, bat, starship, zoxide…)
  git.nix           git + gh
  editor.nix        zed
  terminal.nix      ghostty
  gnome.nix         GNOME extensions, dconf keybindings, syncthing, XDG dirs
home/lumi/          identity (username, stateVersion) + desktop app packages
```

## Activating on a fresh machine

### NixOS (new install)

```bash
git clone https://github.com/lumi-a/nixos /etc/nixos
```

Generate hardware config and drop it into the right place:

```bash
nixos-generate-config --show-hardware-config > /etc/nixos/hosts/t14/hardware-configuration.nix
```

Then either adapt `hosts/t14/default.nix` for the new machine, or create a new host directory following the same pattern and add a `nixosConfigurations.<hostname>` entry in `flake.nix`.

```bash
sudo nixos-rebuild switch --flake /etc/nixos#t14
```

### Any Linux machine with Nix (remote, fresh install, etc.)

Install Nix if not already present:

```bash
sh <(curl -L https://nixos.org/nix/install) --daemon
```

Then activate the base profile (fish, git, ripgrep, and the rest of the CLI tools):

```bash
nix run home-manager/master -- switch --flake github:lumi-a/nixos#base
```

> **Note:** `base` assumes username `lumi` and home directory `/home/lumi`. On a machine
> where your username differs, clone the repo and edit those two lines in `flake.nix` first.
