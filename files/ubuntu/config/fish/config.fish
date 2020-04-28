# Following fisher scripts were installed in this setup
# fisher add edc/bass
# fisher add FabioAntunes/fish-nvm
# fisher add jethrokuan/z

alias l="ls -lh";
alias ll="ls -alh";
alias ..="cd ../";
alias ...="cd ../..";
alias ....="cd ../../..";
alias cds="cd ~/Sites";
alias c='xclip -selection clipboard'
alias ld='lazydocker'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

alias j='z';
alias jj='zz';
alias dd='ddev';
alias dc='docker-compose';
alias edit='subl'
alias dep='php ./vendor/bin/dep'
alias ddd='date --iso-8601=seconds'
alias tt='date +"%s"'
alias pp='make -C ~/pCloudDrive/Fabien/Notes/scripts'

set -gx PATH $HOME/.cargo/bin $HOME/.local/bin $HOME/Sdk/flutter/bin $HOME/.config/composer/vendor/bin/ $PATH
#status --is-interactive; and source (pyenv init -|psub