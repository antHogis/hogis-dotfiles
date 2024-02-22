# Use powerline
USE_POWERLINE="true"

# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi


# OH MY ZSH (backups from old machine)
# ZSH_THEME="avit"
# plugins=(git docker docker-compose)
# source $ZSH/oh-my-zsh.sh

# Path & env
HOMEBIN="/home/hogis/bin/"
export PATH=$PATH:${HOMEBIN}js:${HOMEBIN}py:${HOMEBIN}sh:${HOMEBIN}/etc:
export EDITOR=/usr/bin/vim

# Aliases
alias l="ls -CF"
alias ll="ls -FAlh"
alias la="ls -AF"
alias duls="du -sh ./*"
alias git="noglob git"
alias xo="xdg-open"
alias vim="nvim"

goto() {
	ALIAS=$1
	DIR=$(~/bin/sh/get-dir-by-alias.sh $ALIAS)
	cd $DIR
}

ide() {
    # Split windows vertically
    swaymsg split vertical
    # Open a terminal
    swaymsg exec "\$term -D ${PWD}"
    # Sleep to wait for terminal opening
    sleep .25
    # Resize terminal
    swaymsg resize set height 20ppt
    # Move focus back to original window
    swaymsg focus up
	# Open editor
	nvim .
}


# Options
setopt HIST_IGNORE_SPACE
# bindkey -v

# SSH
eval $(keychain --eval --quiet ~/.ssh/id_rsa) 

# Uncomment when gcloud & kubectl installed
export KUBECONFIG=$HOME/.kube/config
export GOOGLE_APPLICATION_CREDENTIALS="/home/hogis/downloads/g-service-account.json"
 if [ -f '/home/hogis/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/hogis/google-cloud-sdk/completion.zsh.inc'; fi
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/hogis/pkg/google-cloud-sdk/path.zsh.inc' ]; then . '/home/hogis/pkg/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/hogis/pkg/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/hogis/pkg/google-cloud-sdk/completion.zsh.inc'; fi

# NVM
if ! command -v nvm &> /dev/null
then
    source /usr/share/nvm/init-nvm.sh
fi

export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"

