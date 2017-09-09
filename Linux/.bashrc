#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# To cd into my McGill folder
#alias mcg='cd /home/jl/Dropbox/McGill'

# To use mons and extend 2nd monitor to right
alias eright='mons -e right'
# 2nd monitor to left
alias eleft='mons -e left'
# Only primary screen
alias p='mons -o'
# Only secondary screen
alias s='mons -s'
# Duplicate screens
alias d='mons -d'

# Cd in dropbox folder
#alias drop='cd /home/jl/Dropbox'
# Repo folder
alias repo='cd /home/jl/Dropbox/Repos'
# Power off quickly
alias off='systemctl poweroff'
# Reboot quickly
alias reboot='systemctl reboot'
# Push using git quickly to master
alias push='git push -u origin master'


# To quickly edit configs
alias i3config='vim ~/.config/i3/config'
alias bashrc='vim ~/.bashrc'

# Access folders in pcmanfm quickly, opens a new tab
alias CTF='pcmanfm "file:/home/jl/Dropbox/McGill/CTF"'
alias ctf='pcmanfm "file:/home/jl/Dropbox/McGill/CTF"'
alias drop='pcmanfm "file:/home/jl/Dropbox"'
alias down='pcmanfm "file:/home/jl/Downloads"'
alias org='pcmanfm "file:/home/jl/Dropbox/1.Org"'
alias mcg='pcmanfm "file:/home/jl/Dropbox/McGill"'
alias sem='pcmanfm "file:/home/jl/Dropbox/McGill/Fall 2017"'
alias text='pcmanfm "file:/home/jl/Dropbox/McGill/Textbooks"'
