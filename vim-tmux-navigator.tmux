#!/usr/bin/env bash

is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
tmux bind-key -n C-h if-shell "$is_vim" "send-keys C-h"  "select-pane -L"
tmux bind-key -n C-t if-shell "$is_vim" "send-keys C-t"  "select-pane -D"
tmux bind-key -n C-n if-shell "$is_vim" "send-keys C-n"  "select-pane -U"
tmux bind-key -n C-s if-shell "$is_vim" "send-keys C-s"  "select-pane -R"
tmux bind-key -n C-\\ if-shell "$is_vim" "send-keys C-\\" "select-pane -l"
tmux bind-key -T copy-mode-vi C-h select-pane -L
tmux bind-key -T copy-mode-vi C-t select-pane -D
tmux bind-key -T copy-mode-vi C-n select-pane -U
tmux bind-key -T copy-mode-vi C-s select-pane -R
tmux bind-key -T copy-mode-vi C-\\ select-pane -l
