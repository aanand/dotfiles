# prompt setup
autoload colors; colors
setopt PROMPT_SUBST

# prompt (left - current path)
export PS1='%{$fg[blue]%}%3~ %{$fg[cyan]%}→ %{$reset_color%}'

# prompt (right - git info)
source ~/.dotfiles/zsh/git-prompt.zsh
export RPROMPT='%{$terminfo[bold]$fg[yellow]%}$(git-prompt "%s")%{$reset_color%}'

# ls colors
export CLICOLOR=1

# completion
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # matches case insensitive for lowercase
zstyle ':completion:*' insert-tab pending           # pasting with tabs doesn't perform completion

# aliases
alias l="ls -lAh"
alias fig="docker-compose"

# history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS

# print elapsed time when a command takes more than 10 seconds
REPORTTIME=10

# virtualenv
source /usr/local/bin/virtualenvwrapper.sh
