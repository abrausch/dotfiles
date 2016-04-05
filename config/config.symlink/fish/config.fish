set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish

set -g -x PATH /usr/local/bin $PATH
set -g -x PATH /Users/abrausch/Projekte/DirtyLittleHelper $PATH
set -g -x PATH /Users/abrausch/bin $PATH
set -g -x PATH /Users/abrausch/Projekte/Caperwhite/git/Xcode/bin $PATH
set -g -x PATH /Users/abrausch/Projekte/Caperwhite/git/Xcode/Scripts $PATH

# autojump
[ -f /usr/local/share/autojump/autojump.fish ]
. /usr/local/share/autojump/autojump.fish

#chruby
source /usr/local/share/chruby/chruby.fish
chruby 2.2.2
