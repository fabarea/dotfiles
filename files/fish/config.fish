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
alias d='ddev';
alias dc='docker-compose';
alias edit='subl'
alias dep='php ./vendor/bin/dep'

set -gx PATH $HOME/.cargo/bin $HOME/.config/composer/vendor/bin $PATH
#status --is-interactive; and source (pyenv init -|psub)
