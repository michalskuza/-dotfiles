# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=always'
alias fgrep='fgrep --color=always'
alias egrep='egrep --color=always'
alias less='less -R'

export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export PETSC_DIR=/storage/PETSC/petsc-3.3-p5
export PETSC_ARCH=linux-gnu-c-debug

#Hadoop settings
# Set Hadoop-related environment variables
export HADOOP_HOME=/usr/local/hadoop-0.20.204.0

#Mahout home
export MAHOUT_HOME=/storage/Master_thesis/mahout/mahout-distribution-0.7

shopt -s histappend
PROMPT_COMMAND='history -n;history -a'
HISTSIZE=100000
HISTFILESIZE=100000
