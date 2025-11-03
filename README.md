# Dotfiles

This repository is where I maintain all of the installation links/guides
I use to configure developer machines. This allows me to both get up
and running on a new machine quickly, and provide an easily shareable
format to socialize my config (or just start a conversation) with developers
on my team.

# Installation

These sections describe the commands (or installation links) I need to install the prerequisite tooling on my machine to get up and running quickly.

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
- git - should come default on most distros, if not download from [here](https://git-scm.com/downloads/linux)
- A NerdFont - I use JetBrainsMono, there's a full list for download [here](https://www.nerdfonts.com/font-downloads)
    - A helpful link for downloading said font is [here](https://blog.khmersite.net/p/installing-nerd-font-on-fedora/)
- oh-my-posh - install from [here](https://ohmyposh.dev/docs/installation/linux)
- zoxide - install from [here](https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation)

## neovim 
- NeoVim (use tagged releases for telescope!!) - install from [here](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- ripgrep - install from [here](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)
- fzf - install from [here](https://github.com/junegunn/fzf?tab=readme-ov-file#installation)

### Note on LSP management after migrating to Lazy

Unfortunately, something in my config seems to be preventing mason-lspconfig's auto-enable
functionality from working. So for now, I'm going to have to resort to mason-less LSP management.

I'll document the general procedure to install and enable an LSP using nvim-lspconfig here:

1. Install the LSP server - most of these are freely available. Mason can still be used as
a really nice package manager for these if you'd prefer
2. Enable the LSP server using `vim.lsp.enable()`
3. Go back and add any configuration you need to, which can usually be found on the LSP
server's page

## tmux
- tmux - install from [here](https://github.com/tmux/tmux/wiki/Installing)
- tmux package manager (tpm)
    ```bash
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ```
