#!/bin/bash
stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.
export PS1=" \[$(tput bold)\]\[$(tput setaf 4)\]\w \[$(tput setaf 2)\]→ \[$(tput sgr0)\]"

# Bitwarden
export BW_SESSION="HMaRrOFm1f8aaJuBSLLMMD7Te6wxdFeSfy39rwW4Ti3gCLatdJTqAqJ3WqrKI1jbc16dBmb2eVCfx7xul2L2Nw=="

# Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source $HOME/.local/bin/virtualenvwrapper.sh

[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"