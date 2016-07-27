
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source /usr/local/etc/bash_completion.d/git-prompt.sh
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp $(basename $(dirname "$PWD"))/$(basename "$PWD")$(__git_ps1)]\A\$ '
export PATH="$HOME/bin:$PATH"
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Cabal path to Haskell libraries
export PATH="$HOME/Library/Haskell/bin:$PATH"

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
