# How to install this configuration

## Important
You need the `git` package to clone this configuration, so you add it to your `/etc/nixos/configuration.nix` 
and rebuild your system with `sudo nixos-rebuild switch`

## Prolog
This installation guide was written for the version `24.05.2310.7dca15289a1c (Uakari)`, some commands may change and you need to use the version number
of your system. In this case `24.05`. To check your version you can use the command:

```bash
nixos-verison
```

## Installation
Create a folder in `~` called `.dotfiles` and clone this repository into it.
```bash
mkdir .dotfiles
git clone https://github.com/Permafrozen/nixos-config .dotfiles
```

After having all the configurations of this repository in `~/.dotfiles` you need to bootstrap home-manager into your system. 
Look at the guide at `https://nix-community.github.io/home-manager/` and search for the standalone installation. For example for `24.05`

```bash
nix-channel --add https://github.com/nix-community/home-manager/archive/release-24.05.tar.gz home-manager
nix-channel --update
```

After that you can install home manger by using the command following command. If it fails you need to log out and log in to reload the enviroment variables.

```bash
nix-shell '<home-manager>' -A install
```

## Initialisation
After installing all the needed files, you need to copy your own `/etc/nixos/hardware-configuration.nix` to `~/.dotfiles/system`. Overwrite the 
already existing file

```bash
cp /etc/nixos/hardware-configuration.nix ~/.dotfiles/system
```




