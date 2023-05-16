[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source /usr/local/etc/bash_completion.d/git-prompt.sh
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp $(basename $(dirname "$PWD"))/$(basename "$PWD")$(__git_ps1)]\A\$ '
export PATH="$HOME/bin:$PATH"
export EDITOR='vim'
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/bin" # Add local bin files 
export PATH=/usr/local/bin/psql:$PATH
export PATH=~/cabal/bin:$PATH
export PATH=/Users/jameshamilton/.local/bin:$PATH
# Cabal path to Haskell libraries
export PATH="$HOME/Library/Haskell/bin:$PATH"


if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jameshamilton/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jameshamilton/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jameshamilton/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jameshamilton/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

