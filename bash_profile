#git
alias g="git"
alias gaa="git add *"
alias gchm="git checkout master"
alias gch="git checkout"
alias gl="git log"
alias gs="git status"

# get git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
