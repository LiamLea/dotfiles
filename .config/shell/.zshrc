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

export TF_CLI_ARGS_plan=-parallelism=30
export TF_CLI_ARGS_apply=-parallelism=30
source /Users/liamlea/venv/bin/activate
eval "$(_OPERATE_COMPLETE=zsh_source operate)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/liamlea/tools/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/liamlea/tools/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/liamlea/tools/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/liamlea/tools/google-cloud-sdk/completion.zsh.inc'; fi
