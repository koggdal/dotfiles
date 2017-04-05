# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME='avit'

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git history-substring-search)

# Set up oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin

# Add node module binaries to the PATH
# This allows you to run binaries installed locally in a folder without accessing it via node_modules
export PATH=$PATH:./node_modules/.bin/

export LC_CTYPE=en_US.UTF-8

# Fix up/down arrow keys for substring searches in history
bindkey '\eOA' history-substring-search-up
bindkey '\eOB' history-substring-search-down

# Always append history from each tab
setopt inc_append_history

# Aliases
alias gits='git status'
alias home='cd ~'
alias week='date +%V'

# IP related
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias localip='ipconfig getifaddr en1'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash='sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl'

# Add an empty space in the dock to act as a separator
alias docksep="defaults write com.apple.dock persistent-apps -array-add '{ \"tile-type\" = \"spacer-tile\"; }' && killall Dock"

alias git-clean-branches="git branch --merged | grep -Gv '*' | xargs git branch -d"
alias git-branches="git for-each-ref --sort='authordate:iso8601' --format=' %(authordate:relative)%09%(refname)' refs/heads | sed 's/refs\/heads\///g'"

# Check for ~/.extra-login file and run that
if [ -f ~/.extra-login ]; then
  source ~/.extra-login
fi

# Functions

# Duplicate a file to the same folder, but with a different name
# Example where file2.txt will end up in the same folder as file.txt:
# $ duplicate some/path/to/file.txt file2.txt
function duplicate {
  local location=$(dirname "$1")
  local from="$1"
  local to="$location/$2"
  cp $from $to
}
