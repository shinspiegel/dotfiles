# SOME VARIABLES
export PATH="$HOME/bin:$PATH"	
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go	
export DENO_INSTALL="/home/shin/.local"
export PATH="$DENO_INSTALL/bin:$PATH"


# Get color support for 'less'
export LESS="--RAW-CONTROL-CHARS"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Use colors for less, man, etc.
[[ -f ~/.less_termcap ]] && . ~/.less_termcap

# use nvm stuff
[[ -f /usr/share/nvm/init-nvm.sh ]] && source /usr/share/nvm/init-nvm.sh

# Alias
alias ~="cd ~"
alias ..="cd .."	

alias projetos="/home/shin/Documents/Projects"	
alias aulas="/home/shin/Documents/Aulas"	
alias tentaculo="/home/shin/Documents/Tentaculo"
alias pos="/home/shin/Documents/Pos-Graduação"

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

plugins=(git)
source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle zsh-users/zsh-completions

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k
# Tell antigen that you're done.
antigen apply