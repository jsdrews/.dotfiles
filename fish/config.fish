if status is-interactive
    # Commands to run in interactive sessions can go here
end

# FISH
set fish_greeting

function fish_title
    echo -e "\xF0\x9F\x90\x9F";
end

# BASIC
alias c="clear"
alias cls="clear"
alias rst="clear && cd"
alias vim="nvim"
alias vrc="nvim ~/.config/fish/config.fish"
alias src="source ~/.config/fish/config.fish"
alias s="source ~/.config/fish/config.fish"
alias vra="nvim ~/.config/fish/config.fish"
alias pp="python -m json.tool"
alias listen="sudo lsof -i -P -n | grep LISTEN"
alias l="ls -altr --color=auto"
alias conf='bash -c "cd ~/.config/nvim && nvim ."' 

# TROUBLESHOOTING
alias curl="curl -L"
alias glog="git log --all --graph --decorate"

# GO
set -gx GO111MODULE auto

# DOCKER
alias d="docker"
alias psa="docker ps --all"
alias dc="docker-compose"
alias dcd="doco down --rmi all -v"
alias drun="docker run --rm -it"
alias k="kubectl"
alias m="minikube"
alias n="nvim"
alias v="vim"
alias h="helm"
alias hf="helmfile"
alias imgs="docker images"
alias rmi="docker rmi"
alias st="echo $status"

# TASKFILE
alias t="task"

# DEV
set -gx DEV_DIR ~/dev
alias dev="cd $DEV_DIR"
alias me="cd $DEV_DIR/me"
alias allow="direnv allow"
alias a="direnv allow"

# DEV - PYTHON
set -gx PYRC "$HOME/.config/.pythonrc"
alias pyrc="code $PYRC"
alias py="python -i $PYRC"

# LOCAL (NO COMMIT)
if test -f "$HOME/.config/fish/local_config.fish"
    source "$HOME/.config/fish/local_config.fish"
end

# END
starship init fish | source
direnv hook fish | source
