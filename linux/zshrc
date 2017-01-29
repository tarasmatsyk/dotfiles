#---------------------------CUSTOM_COMMANDS------------------------------------

function initial_path() 
{
    PS1="[\u@\W]\\$ " PROMPT_DIRTRIM=1
}

function short_path() 
{
    PS1="[\W]\\$ "
    PROMPT_DIRTRIM=1
}

alias default_path='PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "'
alias ..="cd .." ...="cd ../.." ....="cd ../../.."

# python 3 default
alias python=python3
#---------------------------END_CUSTOM_COMMANDS---------------------------------

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export VISUAL=vim
export EDITOR="$VISUAL"

# custom config
SAVEHIST=500
HISTSIZE=500
HISTFILE=~/.zsh_history
