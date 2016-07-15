export EDITOR='vim'
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=/usr/local/bin/psql:$PATH

_not_inside_tmux() { 
  [[ -z "$TMUX" ]] 
}

ensure_tmux_is_running() {
  if _not_inside_tmux; then
    tat
  fi
}

ensure_tmux_is_running
