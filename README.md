# BRAIN MEMORY FOR INSTALLING THINGS

While this dotfiles repository is a handy way for me to keep track of what I've done with my files to-date,
it doesn't tell me anything about what I need to install to make sure they're set up correctly.
That's what this file is here to do

# Prerequisites
First off, thanks to https://www.youtube.com/watch?v=y6XCebnB9gs for starting me on this awesome journey

## stow-based dotfiles management
- stow
    - MacOS
    ```bash
    brew install stow
    ```
    - Ubuntu
    ```bash
    sudo apt install -y stow
    ```
    - Fedora
    ```bash
    sudo dnf install -y stow
    ```

## zsh
- zsh - install from [here](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#how-to-install-zsh-on-many-platforms)
- fzf - install from [here](https://github.com/junegunn/fzf?tab=readme-ov-file#installation)
- git - should be installed by default, if not is sadge GLHF
- A NerdFont - I use JetBrainsMono, there's a full list for download [here](https://www.nerdfonts.com/font-downloads)
- oh-my-posh - install from [here](https://ohmyposh.dev/docs/installation/linux)
- zoxide - install from [here](https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation)

## neovim 
- NeoVim (use tagged releases for telescope!!) - install from [here](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- ripgrep - install from [here](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)
- fzf - install from [here](https://github.com/junegunn/fzf?tab=readme-ov-file#installation)



## tmux
- tmux - install from [here](https://github.com/tmux/tmux/wiki/Installing)
- tmux package manager (tpm)
    ```bash
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm)
    ```
