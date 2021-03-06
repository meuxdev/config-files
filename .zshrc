alias work-py="cd ~/.config-files && git checkout python-config && cd ~ && source ~/.zshrc && clear && echo 'Ready to work with python!!💚'"
alias work-js="cd ~/.config-files && git checkout js-config && cd ~ && source ~/.zshrc && clear && echo 'Ready to work with JavaScript!!💛'"
alias work-dotnet="cd ~/.config-files && git checkout dotnet-config && cd ~ && source ~/.zshrc && clear && echo 'Ready to work with .NET💜!!'"
alias work-golang="cd ~/.config-files && git checkout golang-config && cd ~ && source ~/.zshrc && clear && echo 'Ready to work with Golang💙!!'"

# todo alias
alias todo="vim ~/todo.txt"
alias todo-l="cat ~/todo.txt"


# Moving Alias
alias projects="cd ~/documents/projects"
alias courses="/mnt/c/Users/andra/Desktop/Cursos"

# Filter Alias
alias ls-js="ls *.js" # shows and filters with wild cards all the .js files

# Python alias 
alias py="python3"

# Git alias
alias git-graph="git log --all --graph --decorate --oneline" # git log graph
alias gc="git commit" # Git commit
alias gaa="git add -A" # Git add all
alias gmu="git branch -m master main" # refactors main branch
alias gin="git init" # git init
alias gcam="git commit -am" # git add and commit

# ALIAS CONFIG
alias vim-config="vim ~/.config-files/.vimrc"
alias zsh-config="vim ~/.config-files/.zshrc"


# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# GPG PATCH
export GPG_TTY="${tty}"
GPG_TTY="${tty}"


# THEME
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
plugins=(git)

source $ZSH/oh-my-zsh.sh


### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-completions
### End of Zinit's installer chunk



# NVM config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source ~/.rvm/scripts/rvm
