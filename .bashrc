parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[32m\]\$(parse_git_branch)\[\033[00m\] \w $ "

alias sl="ls"
alias ls="ls -G"
alias l="ls -Glrtsh"
alias ...="cd ../.."
alias ..="cd .."
alias cw="cd ~/work"
alias cww="cd ~/work/wapi"
alias coding="cd ~/coding"
alias cw4="cd ~/work/v4; workon v4"
alias v="vim"
alias s="ssh"
alias ci="ssh ci"

alias rmpyc="find . -name '*.pyc' -type f -delete"
alias fuck='sudo $(history -p \!\!)'

alias gitl="git log --all --decorate --graph --date-order"
alias gits="git status"
alias gist="git status"
alias gitd="git diff"
alias gitdc="git diff --cached"
alias gitc="git commit"
alias gitci="git commit --interactive"
alias gitpr="git pull --rebase"
alias gitco="git checkout"
alias gitcob="git checkout -b" 
alias gitpp="git pull; git push"
alias gitp="git push" 
alias gitb="git branch"
alias gitba="git branch -a"
alias gitbd=''

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/work
source /usr/local/bin/virtualenvwrapper.sh
