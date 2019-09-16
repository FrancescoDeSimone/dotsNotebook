source ~/.rc
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
SAVEHIST=1000
HISTFILE=~/.zsh_history
HYPHEN_INSENSITIVE="true"
DEFAULT_USER=`whoami`
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv aws)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs battery time)
