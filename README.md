# dotfiles

MacOS Setup
----------------
1. Pull this repo to e.g `~/git/dotfiles`

2. Symlink config files to proper locations
```bash
ln -s ~/git/dotfiles/alacritty ~/.config/alacritty
ln -s ~/git/dotfiles/bash ~/.config/bash
ln -s ~/git/dotfiles/nvim ~/.config/nvim
```

3. Add this to the end of your `.zshrc`
```bash
# source bash aliases
[ -f ~/.config/bash/.bash_aliases ] && . ~/.config/bash/.bash_aliases

# set prompt to relative to $HOME
PS1='[%~] '
```

4. Reload the shell or run `source ~/.zshrc`

5. Install some deps
```
brew tap homebrew/cask-fonts
brew install git gcc make unzip neovim ripgrep font-hack-nerd-font
```

RaspberryPi4 Setup
----------------
1. Pull this repo to e.g `~/git/dotfiles`

2. ~/git/dotfiles/vim <-- copy or symlink this for your .vimrc


Linux Setup
----------------
TODO

Windows Setup
----------------
TODO



