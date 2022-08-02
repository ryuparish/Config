# Initializing tmux
# R: Only makes a tmux session if there is not a previous one.
export PATH
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi


# Aliases
# R: Clean and clear 
alias c="clear; ls"

# R: Clean and clear fuzz
alias clea="clear; ls"
alias rl="clear; ls"
alias rls="clear; ls"
alias clera="clear; ls"
alias cler="clear; ls"
alias cle="clear; ls"
alias clar="clear; ls"
alias lear="clear; ls"

# R: Back up the file tree
alias b="cd .."

# R: Tmuxniator shortcut
alias mux="tmuxinator"

# Showing Colors: for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000

# Use lf to visually traverse filesystem and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ryuparish/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ryuparish/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ryuparish/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ryuparish/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#
## Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"

export PATH=$PATH:/Users/parisryu/.toolbox/bin
export PATH="/opt/homebrew/opt/node@12/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

