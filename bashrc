# some more ls aliases
alias ll='ls -lFh'
alias la='ls -Al'
alias l='ls -CF'
alias grep='grep --color=always'
alias fgrep='fgrep --color=always'
alias egrep='egrep --color=always'
alias less='less -R'
alias duh='du -h --max-depth=1'

shopt -s histappend
PROMPT_COMMAND='history -n;history -a'
HISTSIZE=100000
HISTFILESIZE=100000

export JAVA_HOME=/usr/lib/jvm/java-7-oracle

alias untar='tar xvfz'

