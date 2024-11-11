autoload -Uz compinit
compinit
autoload -U colors && colors
PS1="%{$fg[green]%}%n@%m %{$fg[blue]%}%~ %{$reset_color%}%% "
export CLICOLOR=1
export LSCOLORS=gafacadabaegedabagacad
alias grep='grep --color=auto'
alias ls='ls --color=auto'
eval "$(starship init zsh)"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source <(kubectl completion zsh)

