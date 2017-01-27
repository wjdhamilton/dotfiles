_not_inside_tmux() { 
  [[ -z "$TMUX" ]] 
}

ensure_tmux_is_running() {
  if _not_inside_tmux; then
    tat
  fi
}

ensure_tmux_is_running

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
