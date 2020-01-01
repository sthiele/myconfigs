# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sthiele/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

zstyle ':completion:*' menu select

setopt HIST_IGNORE_DUPS

autoload -U colors && colors

PROMPT="[%{$FG[069]%}%n@%m %~%{$reset_color%}]> "
alias ls='ls --color=auto'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/sthiele/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/sthiele/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/sthiele/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/sthiele/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source /usr/share/doc/pkgfile/command-not-found.zsh

export PATH="/home/sthiele/.cargo/bin:/home/sthiele/bin:$PATH"
