#!/bin/zsh
SESSION=$(pwd|xargs basename)
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)
clear
if [ "$SESSIONEXISTS" = "" ]
then
  tmux new-session -d -s $SESSION
  tmux rename-window -t 0 Main
  tmux send-keys "vim . && clear" "Enter"
  tmux split-window -v -p 20
  tmux send-keys "htop" "Enter"
  tmux split-window -h -p 50
  tmux select-pane -t 0
fi
tmux attach-session -t $SESSION:0
