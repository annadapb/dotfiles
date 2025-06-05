if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    set -g WIN /mnt/c/Users/annad
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/annada/.miniforge3/bin/conda
    eval /home/annada/.miniforge3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/annada/.miniforge3/etc/fish/conf.d/conda.fish"
        . "/home/annada/.miniforge3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/annada/.miniforge3/bin" $PATH
    end
end

if test -f "/home/annada/.miniforge3/etc/fish/conf.d/mamba.fish"
    source "/home/annada/.miniforge3/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/annada/.local/google-cloud-sdk/path.fish.inc' ]; . '/home/annada/.local/google-cloud-sdk/path.fish.inc'; end


# Tmux color fix
if test "$TERM" = "xterm-256color"
    set -x COLORTERM "truecolor"
end

# Rclone mount and unmount GCP instance
function rcmount
    mkdir -p ~/mnt/$argv[1]
    rclone mount $argv[1]: ~/mnt/$argv[1] \
        --vfs-cache-mode full \
        --vfs-cache-max-age 24h \
        --dir-cache-time 24h \
        --buffer-size 32M &
    echo "Mounted $argv[1] at ~/mnt/$argv[1]"
end

function rcumount
    set mountpoint ~/mnt/$argv[1]
    fusermount -u $mountpoint
    echo "Unmounted $mountpoint"
end

# The dotfiles git tracking
alias dotfiles='git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'


# Options for GO
set -x GOPATH $HOME/.go

# Options of fx JSON viewer
set -x FX_SHOW_SIZE true
set -x FX_NO_MOUSE true
set -x FX_THEME 3
