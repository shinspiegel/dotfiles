export ZSH="/Users/shin/.oh-my-zsh"
ZSH_THEME="shin"
ZSH_DISABLE_COMPFIX=true


# Export variables
export DENO_INSTALL="/Users/shin/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/Users/shin/.cargo/bin:$PATH"


# Settings for NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"                                         # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"   # This loads nvm bash_completion


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init -)"


# JAVA / Android settings
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


# Settings basic Alias for the machine
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"

alias s="/Users/shin/Documents/Personal/Code"
alias tentaculo="/Users/shin/Documents/Tentaculo"
alias f="/Users/shin/Documents/Fetchly"
alias fetchly="/Users/shin/Documents/Fetchly"
alias pg_start="pg_ctl -D /usr/local/var/postgres start"
alias pg_clear="rm /usr/local/var/postgres/postmaster.pid"
alias code="codium"
alias xcode="open -a xcode"


# Settings some plugins and this kind of stuff
plugins=(git zsh-syntax-highlighting)


# Settings the configurations
source $ZSH/oh-my-zsh.sh


##########################
#     IOS functions      #
##########################

pod-install() {
    yarn;
    cd ios;
    pod install;
    cd ..;
}

make-release() {  
    if [ ! "$1" ]; then
        return
    fi

    if [ ! "$2" ]; then
        return
    fi

    git add -A;
    
    if [ "$3" ]; then
        git commit -m "New $3 release, build $2 on version $1";
        git tag -a "$1" -m "New $3 release $1, build $2"
    else
        git commit -m "New iOS release, build $2 on version $1"
        git tag -a "$1" -m "New iOS release $1, build $2"
    fi

    git push;
    git push --tags;
}



##########################
#     Git functions      #
##########################

git-clean() {
    git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d
}


##########################
#    GODOT REPOSITORY    #
##########################

godot-repository-init() {
    git init;

    mkdir build;
    mkdir build/html build/linux build/macos build/win;
    touch build/html/touch build/linux/touch build/macos/touch build/win/touch;

    echo "# Set the default behavior, in case people don't have core.autocrlf set.\n * text=auto\n \n # Explicitly declare text files you want to always be normalized and converted\n # to native line endings on checkout.\n *.cpp text\n *.c text\n *.h text\n *.gd text\n *.cs text\n \n # Declare files that will always have CRLF line endings on checkout.\n *.sln text eol=crlf\n \n # Denote all files that are truly binary and should not be modified.\n *.png binary\n *.jpg binary\n" >> .gitattributes
    echo "# Import cache\n .import/\n \n # Binaries\n bin/\n lib/\n \n # Keep files\n build/html/*\n !build/html/touch\n build/linux/*\n !build/linux/touch\n build/macos/*\n !build/macos/touch\n build/win/*\n !build/win/touch\n \n" >> .gitignore

    git add -A;
    git commit -m "Initial files"
}