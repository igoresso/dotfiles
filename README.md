# Config files

Configs are managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Install Homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install packages

### Required

```sh
brew install stow mise tmux neovim zsh-autosuggestions zsh-syntax-highlighting
brew install --cask ghostty zed visual-studio-code font-cascadia-code-nf
```

### Optional

```sh
brew install lazygit
```

## Apply dotfiles

```sh
git clone https://github.com/igoresso/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow ghostty mise nvim tmux zed zsh
```

## Bootstrap tmux plugins

```sh
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

Open tmux and press `prefix + I` (prefix is `Ctrl-Space`) to install plugins.

## Install runtimes

```sh
mise install
```
