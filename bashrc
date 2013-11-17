# some more ls aliases
alias ll='ls -lFh'
alias la='ls -al'
alias l='ls -CF'
alias grep='grep --color=always'
alias fgrep='fgrep --color=always'
alias egrep='egrep --color=always'
alias less='less -R'

shopt -s histappend
PROMPT_COMMAND='history -n;history -a'
HISTSIZE=100000
HISTFILESIZE=100000

export JAVA_HOME=/usr/lib/jvm/java-7-oracle

# Hadoop settings
# Set Hadoop-related environment variables
export HADOOP_HOME=/usr/local/hadoop-0.20.204.0

# Some convenient aliases and functions for running Hadoop-related commands
unalias fs &> /dev/null
alias fs="hadoop fs"
unalias hls &> /dev/null
alias hls="fs -ls"

# Add Hadoop bin/ directory to PATH
export PATH=$PATH:$HADOOP_HOME/bin

# Mahout home
export MAHOUT_HOME=/storage/Master_thesis/mahout/mahout-distribution-0.7
# Add Mahout bin/ directory to PATH
export PATH=$PATH:$MAHOUT_HOME/bin

# various aliases
# git
alias gitc="git commit"
alias gits="git status"
alias gitp="git push"
alias gita="git add -A"
alias gitl="git log"
