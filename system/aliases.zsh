# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(/usr/local/bin/gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
else
	echo "No gls"
fi
