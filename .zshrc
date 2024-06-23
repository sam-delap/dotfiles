# Initial zsh configuration provided by Dreams of Autonomy: https://www.youtube.com/watch?v=ud7YxC33Z3w
eval "$(/opt/homebrew/bin/brew shellenv)"
# Plugin manager - zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Plugin installs
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Snippets
zinit snippet OMZP::git
zinit snippet OMZP::aws
zinit snippet OMZP::terraform

# Load completions
autoload -U compinit && compinit

zinit cdreplay -q

# Oh My Posh
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/sam.yaml)"

# Keybinds
bindkey '^b' history-search-backward
bindkey '^n' history-search-forward

# Command history
HISTSIZE=1000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

# Completiion styling
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ls='ls --color'

# Shell integration
source <(fzf --zsh)
eval "$(zoxide init zsh)"
