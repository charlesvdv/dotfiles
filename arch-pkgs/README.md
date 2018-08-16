# arch-pkgs

Automate ArchLinux installation and setup. Also provides an "AUR helper" that build
and update packages.

## Setup

Add this section in `/etc/pacman.conf`:

```
[charlesvdv]
SigLevel = Optional TrustAll
Server = file:///var/cache/pacman/custom
```

## Building

```bash
./build
```

## Updating

```bash
./update
```
