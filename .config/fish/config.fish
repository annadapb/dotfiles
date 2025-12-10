if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    set -g WIN /mnt/c/Users/annad
end


# Tmux color fix
if test "$TERM" = "xterm-256color"
    set -x COLORTERM "truecolor"
end

# The dotfiles git tracking
alias dotfiles='git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'


# Options for GO
set -x GOPATH $HOME/.go

# Options of fx JSON viewer
set -x FX_SHOW_SIZE true
set -x FX_NO_MOUSE true
set -x FX_THEME 3
