alias ls='ls -G'
alias weather='curl -4 wttr.in/Taipei'
alias vim="nvim"
alias factor="/usr/local/bin/gfactor"
alias pandoc="pandoc --pdf-engine=xelatex --variable geometry="margin=0.5in" -s -f markdown"
alias time="gtime -f '%U user %S system %E elapsed %P CPU (%X avgtext + %D avgdata %M maxresident)k
%I inputs + %O outputs (%F major + %R minor)pagefaults %W swaps'"

alias g++='g++-9'

alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias tmux.conf="vim ~/Desktop/dotfiles/tmux.conf"

alias ctags="`brew --prefix`/bin/ctags"

alias ptt2="ssh bbsu@ptt2.cc"

alias pdf='zathura'

alias config='/usr/local/bin/git --git-dir=/Users/waynetu/dotfiles --work-tree=/Users/waynetu'