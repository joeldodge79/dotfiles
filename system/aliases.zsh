# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias l="gls -lh --color"
  alias la="gls -lAh --color"
  alias ls="gls -F --color"
fi
