# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$HOME/libsvm/python:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/waynetu/.oh-my-zsh
export PATH="/anaconda3/bin:$PATH"
export PATH="$HOME/tmux:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

export BENCHMARK="$HOME/libs/google-benchmark/build/src"
export BENCHMARK_FLAG="-isystem ${HOME}/libs/google-benchmark/include -L${BENCHMARK} -lbenchmark -lpthread"
export BOOST=$HOME/libs/boost_1_71_0
export HOMEBREW_GITHUB_API_TOKEN=9bce8a5b42be9b36f51ff2ba3d8f2fbc524dfca1
export OPENCV='/usr/local/Cellar/opencv/4.0.1/include/opencv4'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="refined"
# ZSH_THEME="maran"
# ZSH_THEME="gentoo"


# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git,
  shrink-path
)

source $ZSH/oh-my-zsh.sh

# setopt prompt_subst

PROMPT='%{$fg[white]%}%n%{$reset_color%}@%{$fg[white]%}macbook:%{$FG[031]%}$(shrink_path -f)%{$reset_color%}%(!.#.$) '
LSCOLORS=Exfxcxdxbxegedabagacad
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# autoload -U promptinit; promptinit
#
# prompt pure
#
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v
bindkey "^R" history-incremental-search-backward

alias ls='ls -G'
alias weather='curl -4 wttr.in/Taipei'
alias vim="nvim"
alias factor="/usr/local/bin/gfactor"
alias pandoc="pandoc --pdf-engine=xelatex --variable geometry="margin=0.5in" -s -f markdown"
alias time="gtime -f '%U user %S system %E elapsed %P CPU (%X avgtext + %D avgdata %M maxresident)k
%I inputs + %O outputs (%F major + %R minor)pagefaults %W swaps'"
alias g++='g++-9 -W -Wall -Wextra -std=c++17 -O2'
alias gcc='gcc-9'
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias tmux.conf="vim ~/Desktop/dotfiles/tmux.conf"
alias ctags="`brew --prefix`/bin/ctags"
alias ptt2="ssh bbsu@ptt2.cc"
alias pdf='zathura'
alias jupiter='${HOME}/jupiter/image/bin/jupiter'
alias tar='gtar'
alias config='/usr/local/bin/git --git-dir=/Users/waynetu/dotfiles --work-tree=/Users/waynetu'

function vimtex() {
    if [ -f $1 ];
    then
        vim $1
    else
        cp ~/Documents/template.tex $1
        vim $1
    fi
}

# source /Users/waynetu/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export PATH="/usr/local/opt/flex/bin:$PATH"
export PATH="${HOME}/projects/printfile:$PATH"
