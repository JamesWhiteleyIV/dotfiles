# dotfiles

NEWNEW
```
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
brew install git gcc make unzip neovim ripgrep
```



MacOS Setup
----------------
1. Pull this repo to e.g `~/Documents/git/dotfiles`

2. Symlink config files to proper locations
```bash
ln -s ~/Documents/git/dotfiles/helix ~/.config/helix
ln -s ~/Documents/git/dotfiles/alacritty ~/.config/alacritty
ln -s ~/Documents/git/dotfiles/bash ~/.config/bash
ln -s ~/Documents/git/dotfiles/nvim ~/.config/nvim
```

3. Add this to the end of your `.zshrc`
```bash
# source bash aliases
[ -f ~/.config/bash/.bash_aliases ] && . ~/.config/bash/.bash_aliases

# set prompt
PS1='[%~] '
```

4. Reload the shell or run `source ~/.zshrc`


Linux Setup
----------------
TODO

