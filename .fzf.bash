# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ra/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/ra/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/ra/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/ra/.fzf/shell/key-bindings.bash"
