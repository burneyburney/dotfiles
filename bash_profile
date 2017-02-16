
# bash command aliases
#   -------------------------------------------------------------
    alias c="clear"
    alias l="ls -la"
    alias ..="cd .."
    alias ...="cd ../.."
    alias cd..="cd .."

# alias for meteor
    alias m="meteor"

# directory shortcut aliases
#   -------------------------------------------------------------
    alias githubfun="cd ~/documents/githubFun/"
    alias catr='cat README.md'

# git shortcuts
#   -------------------------------------------------------------
    alias gs="git status"
    alias ga="git add -A"
    alias gc="git commit -v"


# source in bash git syntax aware colors into bash profile
#   -------------------------------------------------------------
    source ~/.bash_git_autocomplete
    source ~/.bash_git_prompt
    export PS1='$(__git_ps1 "(%s)") > '
    source ~/.bash_git_syntax_aware


#   Command History Settings
#   -------------------------------------------------------------
    export HISTCONTROL=ignoreboth:erasedups
    export HISTIGNORE='pwd:ls:cd:cds:cl:sprof:mv:c:..l:...l:cdd:cdr:..:...:.3:.4:.4:.6:doc:brewup:xcb:.p:cla:l'

# idk if this stuff works anymore.. but nothings broken... so its staying
#   -------------------------------------------------------------
    export PATH=/usr/local/php5/bin:$PATH

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
    PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
    export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
