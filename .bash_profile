export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

# Aliases
alias rm="rm -i"
alias hashid="python3 /opt/hash-identifier/hash-id.py"
alias mapper="open /Users/ryuparish/Code/my-mind/index.html"

# Metasploit
PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:/opt/metasploit-framework/bin

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

##
# Your previous /Users/ryuparish/.bash_profile file was backed up as /Users/ryuparish/.bash_profile.macports-saved_2021-09-15_at_01:08:42
##

# MacPorts Installer addition on 2021-09-15_at_01:08:42: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ryuparish/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
