[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=${PATH}:~/development/adt-bundle-mac-x86_64-20140321/sdk/tools:~/development/adt-bundle-mac-x86_64-20140321/sdk/platform-tools


function gitlog() {
    if [ -z "$1" ]
    then
        HOURS=24
    else
        HOURS=$1
    fi

    clear;
    git log --reverse --author="`git config user.name`" --format="%h (%s)" --since="`date -v-${HOURS}H`"
}

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

# bash command aliases
alias cls="clear"
alias ls="ls -la"

# directory shortcut aliases
alias projects="cd ~/projects/"
alias captix="cd ~/projects/grok/sites/captix.dev"
alias blog="cd ~/projects/bloggyBlog/"

# git shortcuts
alias gs="git status"
alias gc="git commit -v"

# artisan generate shortcuts
alias g:m="php artisan generate:model"
alias g:c="php artisan generate:controller"
alias g:v="php artisan generate:view"
alias g:s="php artisan generate:seed"
alias g:mig="php artisan generate:migration"
alias g:r="php artisan generate:resource"

# source in bash git syntax aware colors into bash profile
source ~/.bash_git_autocomplete
source ~/.bash_git_prompt
export PS1='$(__git_ps1 "(%s)") > '
source ~/.bash_git_syntax_aware

source ~/.bash_git
export PS1='\[\033[01;32m\]os \[\033[01;34m\]\w $(__git_ps1 "[%s]")\$\[\033[00m\] '
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"


