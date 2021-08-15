function _tide_maybe_execute
    set -e _tide_transient
    if commandline --is-valid || test -z "$(commandline)"
        set -g _tide_transient
        commandline -f repaint
    end
    commandline -f execute
end
