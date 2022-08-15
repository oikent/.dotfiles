if status is-interactive
    # Commands to run in interactive sessions can go here
end

# !!
function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t $history[1]; commandline -f repaint
        case "*"
            commandline -i !
    end
end

# !$
function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -t ""
            commandline -f history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end


#aliases
alias ls='ls -lah --color=auto'
alias emacs="emacsclient -c -a 'emacs'"
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

#exports
export PATH="$HOME/.emacs.d/bin:$PATH"


starship init fish | source
