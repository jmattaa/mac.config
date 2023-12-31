alias t="tmux"
tn() {
    if [ -z "$1" ]; then
        session_name="$(basename "$(pwd)")"
    else
        session_name="$1-$(basename "$(pwd)")"
    fi
    tmux new -s "$session_name"
} 

tnn() {
    if [ -z "$1" ]; then
        session_name="$(basename "$(pwd)")"
    else
        session_name="$1-$(basename "$(pwd)")"
    fi

    tmux new-session -d -s "$session_name" "nvim ."
    tmux new-window -t "$session_name"

    # focus on the nvim win
    tmux select-window -t "$session_name:0"

    # attach to the tmux session
    tmux attach -t "$session_name" 
}

alias fcd="source ~/.fcd/fcd"

# fuck
eval $(thefuck --alias)
