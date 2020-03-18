ZSH_THEME="powerlevel9k/powerlevel9k"


export PATH="$HOME/bin:$PATH"	export PATH="$HOME/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin	export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go	export GOPATH=$HOME/go
export DENO_INSTALL="/home/shin/.local"
export PATH="$DENO_INSTALL/bin:$PATH"


# Get color support for 'less'	# Get color support for 'less'
export LESS="--RAW-CONTROL-CHARS"	export LESS="--RAW-CONTROL-CHARS"
@@ -18,18 +19,19 @@ export NVM_DIR="$HOME/.nvm"
# use nvm stuff	# use nvm stuff
[[ -f /usr/share/nvm/init-nvm.sh ]] && source /usr/share/nvm/init-nvm.sh	[[ -f /usr/share/nvm/init-nvm.sh ]] && source /usr/share/nvm/init-nvm.sh


alias ~="cd ~"
alias ..="cd .."	alias ..="cd .."
alias 1..="cd .."	alias 1..="cd .."
alias 2..="cd ../.."	alias 2..="cd ../.."
alias 3..="cd ../../.."	alias 3..="cd ../../.."
alias 4..="cd ../../../.."	alias 4..="cd ../../../.."
alias 5..="cd ../../../../.."	alias 5..="cd ../../../../.."
alias 6..="cd ../../../../../.."	alias 6..="cd ../../../../../.."
alias ~="cd ~"	

alias projetos="/home/shin/Documents/Projects"	alias projetos="/home/shin/Documents/Projects"
alias aulas="/home/shin/Documents/Aulas"	alias aulas="/home/shin/Documents/Aulas"
alias tentaculo="/home/shin/Documents/Tentaculo"	alias tentaculo="/home/shin/Documents/Tentaculo"
alias pos="/home/shin/Documents/Pos-Graduação"


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time context dir vcs)	POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)	POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
@@ -58,4 +60,4 @@ antigen theme bhilburn/powerlevel9k powerlevel9k
antigen theme robbyrussell	antigen theme robbyrussell


# Tell Antigen that you're done.	# Tell Antigen that you're done.
antigen apply
