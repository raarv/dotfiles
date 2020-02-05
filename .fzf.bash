# Setup fzf
# ---------
if [[ ! "$PATH" == */home/raarv/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/raarv/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/raarv/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/raarv/.fzf/shell/key-bindings.bash"
