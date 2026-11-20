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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/liamlea/tools/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/liamlea/tools/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/liamlea/tools/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/liamlea/tools/google-cloud-sdk/completion.zsh.inc'; fi

source <(fzf --zsh)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/liamlea/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/liamlea/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/liamlea/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/liamlea/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# source /Users/liamlea/venv/bin/activate  # commented out by conda initialize
# alias operate='PYTHONWARNINGS="ignore" operate'
export PYTHONWARNINGS="ignore:TripleDES"
eval "$(_OPERATE_COMPLETE=zsh_source operate)"

setaws() { eval "$(operate aws login --env "$@")" }
setproxy()   { eval "$(operate infra proxy set "$@")" }
unsetproxy() { eval "$(operate infra proxy unset)" }

export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH"

export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"
