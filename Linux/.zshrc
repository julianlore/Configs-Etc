# Oh-my-zsh stuff
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnosterzak"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo dirhistory alias-tips archlinux)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='emacs'
else
	export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jl/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases from bashrc and new ones
# To cd into my McGill folder
#alias mcg='cd /home/jl/Dropbox/McGill'

# No longer using mons, using xrandr instead
# To use mons and extend 2nd monitor to right
#alias eright='mons -e right'
alias eright='xrandr --auto --output HDMI-1-1 --left-of eDP-1-1'
# 2nd monitor to left
#alias eleft='mons -e left'
alias eleft='xrandr --auto --output HDMI-1-1 --left-of eDP-1-1'
# Only primary screen
#alias p='mons -o'
alias p='xrandr --output HDMI-1-1 --off'
# Only secondary screen
#alias s='mons -s'
alias s='xrandr --output eDP-1-1 --off'
# Duplicate screens
#alias d='mons -d'
alias d='xrandr --output eDP-1-1 --output HDMI-1-1 --same-as eDP-1-1'

# Rotations
alias rl='xrandr --output HDMI-1-1 --rotate left'
alias rr='xrandr --output HDMI-1-1 --rotate right'

# Cd in dropbox folder
alias cdrop='cd /home/jl/Dropbox'
# Repo folder
alias crepo='cd /home/jl/Dropbox/Repos'
# Power off quickly
alias off='systemctl poweroff'
# Reboot quickly
alias reboot='systemctl reboot'
# Push using git quickly to master
alias push='git push -u origin master'

# Update quickly
alias up='yaourt -Syua --no-confirm'


# To quickly edit configs
alias i3config='vim ~/.config/i3/config'
alias bashrc='vim ~/.bashrc'
alias zshrc='vim ~/.zshrc'

# Access folders in pcmanfm quickly, opens a new tab
alias CTF='pcmanfm "file:/home/jl/Dropbox/McGill/CTF"'
alias ctf='pcmanfm "file:/home/jl/Dropbox/McGill/CTF"'
alias repo='pcmanfm "file:/home/jl/Dropbox/Repos"'
alias drop='pcmanfm "file:/home/jl/Dropbox"'
alias down='pcmanfm "file:/home/jl/Downloads"'
alias org='pcmanfm "file:/home/jl/Dropbox/1.Org"'
alias mcg='pcmanfm "file:/home/jl/Dropbox/McGill"'
alias text='pcmanfm "file:/home/jl/Dropbox/McGill/Textbooks"'
alias sem='pcmanfm "file:/home/jl/Dropbox/McGill/Fall 2017"'
alias c251='pcmanfm "file:/home/jl/Dropbox/McGill/Fall 2017/COMP 251 - Algorithms & Data Structures"'
alias c230='pcmanfm "file:/home/jl/Dropbox/McGill/Fall 2017/COMP 230 - Logic and Computability"'
alias c302='pcmanfm "file:/home/jl/Dropbox/McGill/Fall 2017/COMP 302"'
alias c310='pcmanfm "file:/home/jl/Dropbox/McGill/Fall 2017/COMP 310"'
alias c350='pcmanfm "file:/home/jl/Dropbox/McGill/Fall 2017/COMP 350 - Numerical Analysis"'
alias text='pcmanfm "file:/home/jl/Dropbox/McGill/Textbooks"'

# Faster cd
alias cc251='cd "/home/jl/Dropbox/McGill/Fall 2017/COMP 251 - Algorithms & Data Structures"'
alias cc230='cd "/home/jl/Dropbox/McGill/Fall 2017/COMP 230 - Logic and Computability"'
alias cc302='cd "/home/jl/Dropbox/McGill/Fall 2017/COMP 302"'
alias cc310='cd "/home/jl/Dropbox/McGill/Fall 2017/COMP 310"'
alias cc350='cd "/home/jl/Dropbox/McGill/Fall 2017/COMP 350 - Numerical Analysis"'
