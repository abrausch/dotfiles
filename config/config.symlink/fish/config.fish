set -g -x PATH /usr/local/bin $PATH
set -g -x PATH /usr/local/sbin $PATH
set -g -x PATH /$HOME $PATH
set -g -x PATH /Applications/TextMate.app/Contents/Resources/ $PATH
set -g -x PATH $PATH /usr/bin /bin /usr/sbin /sbin  /usr/X11/bin /opt/local/bin
set -g EDITOR vim

set -g JAVA_HOME /Library/Java/JavaVirtualMachines/java/Contents/Home
set -g SCALA_HOME /usr/local/scala/


# chruby
source /usr/local/share/chruby/chruby.fish
chruby 2.2.2

# gem editor
set -g GEM_EDITOR mate
