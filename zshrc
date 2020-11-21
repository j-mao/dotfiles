# Setup ohmyzsh
export ZSH=$HOME/.dotfiles/ohmyzsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# Autocomplete
autoload -Uz compinit && compinit

# SSH without known hosts
alias goto="ssh 2> >( egrep >&2 -v '^Warning: Permanently added') -o 'UserKnownHostsFile /dev/null' -o 'StrictHostKeyChecking=no'"
alias goscp="scp 2> >( egrep >&2 -v '^Warning: Permanently added') -o 'UserKnownHostsFile /dev/null' -o 'StrictHostKeyChecking=no'"

# Vi-style key bindings
set -o vi
bindkey "^R" history-incremental-search-backward

# Software versioning
export JAVA_HOME="$('/usr/libexec/java_home' '-v' '15.0.1.jdk' 2> /dev/null)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
