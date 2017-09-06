#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
# Checks if there's a display and starts x if there is
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

