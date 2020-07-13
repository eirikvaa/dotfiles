# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/eirik/.oh-my-zsh"

# Source Powerline 9K theme
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

# Export Brew Cellar path
export PATH=$PATH:/usr/local/Cellar/

# Homebrew
export HOMEBREW_BUNDLE_FILE="~/projects/dotfiles/Brewfile"

# Theme
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

## Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(
  git
  bundler
  osx
  ruby
  rails
  gem
  pod
  rvm
)

# Source Oh my ZSH
source $ZSH/oh-my-zsh.sh

# Aliases

## Div
alias zshp="cat ~/.zshrc"
alias brewf="vim ~/projects/dotfiles/Brewfile"

## Git
alias gs="git status -bs"
alias gaa="git add ."
alias gb="git branch"
alias gp="git pull"
alias gl="git log --pretty='%C(Yellow)%h %C(Blue)%ad %C(reset)%s' --graph --date=human"
alias gd="git diff"
alias gld="git --no-pager diff --color-words" # LaTeX diff
alias gdc="git diff --cached"
alias gdprev="git diff HEAD~1 HEAD"
alias greshard="git reset --hard HEAD"
alias zshs="vim ~/.zshrc && source ~/.zshrc"
alias gpu="git push"
alias gsp="git stash pop"
alias gst="git stash"
alias gstp="git stash pop"

## Cocoapods
alias bpi="bundle exec pod install"
alias bpu="bundle exec pod update"
alias pi="pod install"
alias pu="pod update"

## Gems
alias bi="bundle install"
alias bu="bundle update"

## HomeBrew
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'

## Airthings
alias at="/Users/eirik/Documents/Jobb/Airthings/Kode/"
alias at_app="/Users/eirik/Documents/Jobb/Airthings/Kode/airthings-ios-app/Airthings"
alias at_cloudio="~/Documents/Jobb/Airthings/Kode/ios_cloudio/"
alias at_realm="~/Documents/Jobb/Airthings/Kode/ios_airthingsrealm/"
alias at_ble="~/Documents/Jobb/Airthings/Kode/ios_airthingsble/"
alias at_utils="~/Documents/Jobb/Airthings/Kode/ios_utils/"

## Personal stuff
alias composify="cd /Users/eirik/Documents/Utvikling/iOS/Composify"
alias havfersk="cd /Users/eirik/Documents/Jobb/Havfersk/Kode/FerskFiskiOS/"
alias chessios="cd /Users/eirik/Documents/Utvikling/iOS/ChessiOS"
alias chess="cd /Users/eirik/Documents/Utvikling/macOS/Chess"
alias nic="cd /Users/eirik/Documents/Utvikling/macOS/Nic"
alias dimes="cd /Users/eirik/Documents/Utvikling/macOS/Dimes/"
alias eirikvaa.me="cd /Users/eirik/Documents/Utvikling/Rails/eirikvaa.me"
alias til="cd ~/Documents/TIL && code ."
alias yahtzee="cd /Users/eirik/Documents/Utvikling/macOS/Yahtzee"
alias swift-ddpv="cd /Users/eirik/Documents/Utvikling/macOS/swift-ddpv"

## Samfundet
alias samf="/Users/eirik/Documents/Frivillighet/MG_Web/Kode/samfundet/"
alias samfapp="/Users/eirik/Documents/Frivillighet/MG_Web/Kode/SamfundetApp/"
alias bricoleur="/Users/eirik/Documents/Skole/Universitet_NTNU/Datateknologi_MTDT/S7_H2018/TDT4295/Prosjekt/BRICOLEUR"

## School
alias s8="/Users/eirik/Documents/Skole/Universitet_NTNU/Datateknologi_MTDT/S8_V2019/"
alias ms="/Users/eirik/Documents/Skole/Universitet_NTNU/Datateknologi_MTDT/S10_V2020/TDT4900/NTNU/tdt4900-masters-thesis/"

## Show and hide hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Functions
function newFolder {
	mkdir $@ && cd ${@:$#}
}

function newSubject {
	mkdir $@ && cd ${@:$#} && mkdir "Øvinger" && mkdir "Forelesninger" && mkdir "Notater" && mkdir "Pensum" && mkdir "Generelt"
}

function todo {
	cd "$HOME/Dropbox/todo"
}

function gac() {
	git add .
	git commit -m $1
}

function openComposify() {
	composify
	code .
}

export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin/dart:$PATH"
export PATH="/user/local/bin/flutter:$PATH"
export CALPLOTPATH="/Users/eirik/Documents/Skole/Universitet_NTNU/Datateknologi_MTDT/S9_H2019/TDT4501/master-thesis/Code/calplot"
export PYTHONPATH=$PYTHONPATH:$CALPLOTPATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export SAMFDB_DEV_PASS="samfundet"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/eirik/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
