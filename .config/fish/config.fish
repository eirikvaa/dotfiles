# Edit and source the Fish config file
function edit-fish-config
	vim ~/.config/fish/config.fish
	. ~/.config/fish/config.fish
end

# Disable the greeting message when starting a new shell session
function fish_right_prompt; end

# Edit bobthefish theme
set -g theme_nerd_fonts yes
set -g theme_color_scheme nord
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_display_git_dirty_vderbose yes
set -g theme_display_git_stashed_verbose yes
set -g fish_prompt_pwd_dir_length 3
set -g theme_date_format "+%a %H:%M"

# Abbrevation

## Git

abbr -a -g gs git status -bs
abbr -a -g gp git push
abbr -a -g gd git diff
abbr -a -g gb git branch
abbr -a -g gdc git diff --cached

abbr -a -g config /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $argv

function gl --description "Show git log in a nice format."
	git log --pretty="%C(Yellow)%h %C(Blue)%ad %C(reset)%s" --graph --date=human
end

function gaa --description "Stage all modified files."
	git add .
end

function gac --description "Stage all modified files and commit with provided commit message."
	git add .
	git commit -m "$argv"
end

## Mint

function mintinstall --description "mint boostrap --link for ~/.mintconfig/Mintfile"
	cd ~/.mintconfig
	mint bootstrap --link
	cd - # Navigate back to where I was
end

## Brew

abbr -a -g bb brew bundle --global 

function brewinstall --description "brew bundle install --global"
	bb --global
end

# Functions

# Navigate to different Airthings directories.
# Accepts a single argument:
#	at app:		Main Airthings Wave iOS application
#	cloudio:	CloudIO module
#	utils:		Utils module
#	realm:		AirthingsRealm module
#	ble:		AirthingsBLE module
function at
	if test (count $argv) = 1
		set b ~/Documents/Jobb/Airthings/Kode
		
		switch $argv[1]
			case "app" 
				cd $b/airthings-ios-app/
			case "cloudio"
				cd $b/ios_cloudio/
			case "util"
				cd $b/ios_util/
			case "realm"
				cd $b/ios_airthingsrealm/
			case "ble"
				cd $b/ios_airthingsble/
		end
	else
		echo "The 'at' function only accepts a single argument."
	end
end

# Navigate to personal projects
# Accepts the following arguments:
#	yahtzee:	Yahtzee game
#	chess:		Chess game
#	nic:		Nic Programming Language
#	swift-ddpv:	Swift Detection of Design Principles
#	samf:		Samfundet
function p
	if test (count $argv) = 1
		set b ~/Documents/Utvikling/macOS

		switch $argv[1]
			case "yahtzee"
				cd $b/Yahtzee
			case "chess"
				cd $b/Chess
			case "nic"
				cd $b/Nic
			case "sudoku"
				cd $b/Sudoku
			case "samf"
				cd ~/Documents/Frivillighet/MG_Web/Kode/Samfundet
			case "swift-ddpv"
				cd $b/swift-ddpv
			case "composify"
				cd ~/Documents/Utvikling/iOS/Composify
			case "headcalc"
				cd ~/Documents/Utvikling/Prosjekter/HeadCalc
		end
	else
		echo "The 'p' function only accepts a single argument."
	end
end

# Navigate to other things
# Accepts the following arguments:
#	til:	TIL (Today I Learned)
#	todo:	Todo project
function o
	if test (count $argv) = 1
		set b ~/Documents
		
		switch $argv[1]
			case "til"
				cd $b/TIL
			case "todo"
				cd ~/Dropbox/todo/
		end
	else
		echo "The 'o' function only accepts a single argument."
	end
end
