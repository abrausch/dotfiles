# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit -m'
alias gs='git submit'
alias grc='git rebase --continue'
alias gca='git commit -v -a'
alias gcv='git commit -v'
alias gco='git checkout'
alias gb='git branch'
alias gst='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias rtwc="git status --porcelain | cut -c 2- | grep -E \"^[^D]\" | cut -c 3- | grep -E '*\.[hm]$'  | xargs -I {} gsed -i 's/[ \t]*$//' {}"
alias amend="git commit --amend"
