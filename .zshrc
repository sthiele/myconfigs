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

source ~/.zsh/spectrum.zsh

PROMPT="[%{$FG[069]%}%n@%m %~%{$reset_color%}]> "

#autoload -U promptinit
#promptinit
#prompt fire

alias ls='ls --color=auto'



