# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# disable the terminal bell
unsetopt beep

# bindkey -e activates the below mapping:
# Ctrl+A moves the cursor to the beginning of the line.
# Ctrl+E moves the cursor to the end of the line.
# Ctrl+K deletes from the cursor to the end of the line.
# Ctrl+U deletes from the cursor to the beginning of the line.
bindkey -e

# shift+tab = reverse-menu-complete
bindkey '^[[Z' reverse-menu-complete

# completion system
autoload -Uz compinit
compinit

# add starship style
eval "$(starship init zsh)"

# Use powerline
USE_POWERLINE="true"

# zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Personal Alias
alias p="readlink -f"
alias ls="ls --color=auto"
alias ll="ls -lah"
alias .z="nvim ~/.zshrc"
alias .zz="source ~/.zshrc"

alias @config="cd ~/WargLlih/config/"
alias @nvim="cd ~/WargLlih/nvim/"

# personal exports
export PATH=$PATH:/home/roy/go/bin
export PATH=$PATH:/home/roy/MyApps
export CLICOLOR=1


# personal functions
function rdp(){
  echo ${$((1920*$3))%.*}x${$((1080*$3))%.*}
  xfreerdp3 /w:${$((1920*$3))%.*} /h:${$((1080*$3))%.*} /u:$1 /v:$2
}

# personal bindmap
bindkey '^h' backward-char
bindkey '^l' forward-char
bindkey '^j' down-line-or-history
bindkey '^k' up-line-or-history
bindkey '^[[3~' delete-char
