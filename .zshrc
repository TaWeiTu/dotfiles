# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$HOME/libsvm/python:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/waynetu/.oh-my-zsh
export PATH="/anaconda3/bin:$PATH"

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
  zsh-autosuggestions,
  vi-mode
)

source $ZSH/oh-my-zsh.sh

PROMPT='%{$fg[white]%}%n%{$reset_color%}@%{$fg[white]%}macbook:%{$FG[031]%}%~%{$reset_color%}%(!.#.$) '
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
# prompt pure

alias ls='ls -G'
alias weather='curl -4 wttr.in/Taipei'
alias g++="/usr/local/bin/g++-8"
alias gcc="/usr/local/bin/gcc-8"
alias vim="nvim"
alias factor="/usr/local/bin/gfactor"
alias pandoc="pandoc --pdf-engine=xelatex --variable geometry="margin=0.5in" -s -f markdown"
alias time="gtime -f 'user: %U system: %S elapsed: %e cpu: %P memory: %M'"

alias zshrc="vim ~/Desktop/dotfiles/zshrc"
alias vimrc="vim ~/Desktop/dotfiles/vimrc"
alias tmux.conf="vim ~/Desktop/dotfiles/tmux.conf"

alias pdf='zathura'

function newtex() {
    cp ~/Documents/template.tex $1
}

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
export HOMEBREW_GITHUB_API_TOKEN=e4aa366f7a7f3c8d60437bdcd1a0a9bb3be74aaa
alias config='/usr/local/bin/git --git-dir=/Users/waynetu/dotfiles --work-tree=/Users/waynetu'
