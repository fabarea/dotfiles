alias l="ls -lh";
alias ll="ls -alh";
alias ..="cd ../";
alias ...="cd ../..";
alias ....="cd ../../..";
alias cdp="cd ~/Projects";
alias j='z';
alias jj='zz';
alias dep='php ./vendor/bin/dep'
export GANDI_LIVEDNS_KEY="mrGbV8YSZiHCFOEzMKanPAdg"

set -gx PATH $HOME/.cargo/bin $HOME/.composer/vendor/bin $PATH
status --is-interactive; and source (pyenv init -|psub)
