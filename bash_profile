# some more ls aliases
alias ls='ls --color'
alias ll='ls -lFh'
alias la='ls -Al'
alias l='ls -CF'
alias li='ls -1'
alias less='less -R'
alias duh='du -h -d 1'
alias untar='tar xvfz'

shopt -s histappend
PROMPT_COMMAND='history -n;history -a'
HISTSIZE=100000
HISTFILESIZE=100000

export PATH=/usr/local/bin:$PATH

# Coreutils
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
alias man='_() { echo $1; man -M $(brew --prefix)/opt/coreutils/libexec/gnuman $1 1>/dev/null 2>&1;  if [ "$?" -eq 0 ]; then man -M $(brew --prefix)/opt/coreutils/libexec/gnuman $1; else man $1; fi }; _'

#using GNU grep
alias grep='ggrep --color=always'
alias fgrep='ggrep -F --color=always'
alias egrep='ggrep -E --color=always'

# Colors
export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad
