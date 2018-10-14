# .dotfiles
My .dotfiles, intended to be managed by GNU Stow.

## Setup
Install GNU stow and link individual directories. Assuming that no configuration files exist, simply run the commands below.

```
git clone git@github.com:mcacek/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Link home files
stow home
```
