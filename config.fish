# ~/.config/fish/config.fish

# some more ls aliases
alias ls='ls --color'
alias ll='ls -lFh'
alias la='ls -Al'
alias l='ls -CF'
alias li='ls -1'

alias less='less -R'
alias duh='du -h -d 1'
alias untar='tar xvfz'

alias g='git'
alias j='java'
alias jc='javac'
alias jp='javap'
alias jpv='javap -verbose'

alias clear='printf "\033c"'


# OS X only
#using GNU grep
alias grep='ggrep --color=always'
alias fgrep='ggrep -F --color=always'
alias egrep='ggrep -E --color=always'
alias find='gfind'
alias locate='glocate'
alias updatedb='gupdatedb'
alias xargs='gxargs'

# Cygwin only
alias newcyg='mintty.exe -i /Cygwin-Terminal.ico - '

