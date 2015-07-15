# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="torres"

# Example aliases
alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH
export PATH=/usr/local/bin:/usr/local/share/python:~/projects/devtools:$PATH
export PATH=~/bin:$PATH


alias cs=clear
alias cls=cs
alias lsa='ls -a'
alias la=lsa
alias lsl='ls -lh'

####################
##
##   AdRoll Aliases
##
####################

alias reset_db="time ( killall python & killall python2.7 & cd ../devtools/ && ./sync-db -v && cd ../adroll/ && alembic upgrade head && paster setup-app development.ini)" 
alias reset_test_db='time ( echo "drop database muscovado_test; create database muscovado_test;" | ../devtools/db && paster setup-app test.ini )'
alias gh_tests='time (../devtools/gh_tests_status.sh)'
alias test_all='time ( paster setup-app test.ini && LANG=C && nosetests -s --tests=adroll )'
alias test_failed='time ( paster setup-app test.ini && LANG=C && nosetests -s --failed )'
alias adroll="workon adroll | cd ~/projects/adroll"
alias adrolll='paster serve --reload development.ini'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting




####################
##
##   AdRoll Stuff
##
####################

export CLOSURE_PATH=~/projects/adroll/tools/closure/compiler.jar
export YUICOMPRESSOR_PATH=~/projects/adroll/tools/yuicompressor/build/yuicompressor-2.4.6.jar
export SCRIPTB_PATH=~/projects/scriptb/scriptb.py
export JSCS_PATH=/usr/local/bin/jscs
export HISTFILESIZE=10000
export HISTTIMEFORMAT='%b %d %I:%M %p '
export HISTCONTROL=ignorespace
export HISTIGNORE=  # colon seperated list of commands to ignore
#export ADROLL_HOME=~/projects/adroll/adroll/bin/tools
export ADROLL_HOME=~/projects/adroll
export PGDATA=/usr/local/var/postgres
export NODE_ENV=development
PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:~/projects/devtools:~/projects/adroll/adroll/bin/tools:$PATH




#alias hack1='ssh adroll@10.62.40.15'
#alias hacksftp='sftp adroll@10.62.40.15'
#alias hack2='ssh newhouse@10.62.47.14'
#alias hack2='ssh adroll@10.62.40.19'
#alias hack2sftp='sftp adroll@10.62.40.19'
alias staging='echo muscovoado;psql -h staging.sf.adroll.com -d prodinado -U readinado --password'
alias localdb='echo muscovado;psql -d prodinado -U readinado --password'
alias gitk='/usr/local/git/bin/gitk'

#####
# Virtualenv stuff
#####
export WORKON_HOME=$HOME/projects/virtualenvs
#export PROJECT_HOME=$HOME/projects
source /usr/local/bin/virtualenvwrapper.sh

export GITHUB_TOKEN=745659c3eaa0eafdbf4fb7fe36471da2ebe8f3a7

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
