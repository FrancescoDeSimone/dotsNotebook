autoload -U colors && colors
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
HYPHEN_INSENSITIVE="true"
DEFAULT_USER=`whoami`
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv aws)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs battery time)

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion::complete:*' gain-privileges 1
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

setopt correctall
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt autocd
setopt extendedglob


# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

source ~/.rc
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

