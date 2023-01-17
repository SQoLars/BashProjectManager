#!/bin/bash

#   █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
#   █     ______                 _              _    ___  ___                                            █
#   █     | ___ \               (_)            | |   |  \/  |                                            █
#   █     | |_/ / _ __   ___     _   ___   ___ | |_  | .  . |  __ _  _ __    __ _   __ _   ___  _ __     █
#   █     |  __/ | '__| / _ \   | | / _ \ / __|| __| | |\/| | / _` || '_ \  / _` | / _` | / _ \| '__|    █
#   █     | |    | |   | (_) |  | ||  __/| (__ | |_  | |  | || (_| || | | || (_| || (_| ||  __/| |       █
#   █     \_|    |_|    \___/   | | \___| \___| \__| \_|  |_/ \__,_||_| |_| \__,_| \__, | \___||_|       █
#   █                          _/ |                                                 __/ |                █
#   █                         |__/                                                 |___/                 █
#  	█                                                                                                    █
#   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
#	🢡 Project made by Simion Cristina, Vlad Alexandru and Vlad Rares
#	🢡 Group 1035
#
#  ╭――――――――――――――――――╮
#  │                  │ Sourced by main. The backend script holds the functions used by the script that do
#  │  backend script  │ not directly impact the completion of the tasks, but are used for the running of the
#  │                  │ script itself and various graphical interface or visual elements functions.
#  ╰――――――――――――――――――╯ 
#  ╭―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――╮
#  │ Functions list:                                                                                     │
#  │                                                                                                     │
#  │ 1. variables                                                                                        │
#  │     syntax: variables                                                                               │
#  │     -> Called once at the start of the script. defines all global variables                         │
#  │                                                                                                     │
#  │ 2. welcomeAnimation                                                                                 │
#  │     syntax: welcomeAnimation                                                                        │
#  │     -> Responsible for the entire welcome animation at the start of the script                      │ 
#  │                                                                                                     │
#  │ 3. typing                                                                                           │
#  │     syntax: typing "..." <delay> <height> + <width> <"yes">                                         │
#  │     -> Takes a string value and prints it character by character with a specified delay             │
#  │                                                                                                     │
#  │ 4. title                                                                                            │
#  │     syntax: title                                                                                   │
#  │     -> Prints the title of the project at the top of the screen after every clear                   │ 
#  │                                                                                                     │
#  │ 5. credits                                                                                          │
#  │     syntax: credits                                                                                 │
#  │     -> prints the author names of the project in the bottom right during the welcome animation      │ 
#  │                                                                                                     │
#  │ 6. creditsDel                                                                                       │
#  │     syntax: creditsDel                                                                              │
#  │     -> Clears the area where credits have been printed                                              │
#  │                                                                                                     │
#  │ 7. line                                                                                             │
#  │     syntax: line                                                                                    │
#  │     -> Prints the GUI bars on top and bottom of the screen after every clear                        │
#  │                                                                                                     │
#  │ 8. lineText                                                                                         │
#  │     syntax: lineText                                                                                │
#  │     -> prints the button legend, menu path and menu state in the bottom bar                         │
#  │                                                                                                     │
#  │ 9. cursor                                                                                           │
#  │     syntax: cursor <delay>                                                                          │
#  │     -> prints the cursor after a function to let the user take another action                       │
#  │                                                                                                     │
#  │ 10. functionCursor                                                                                  │
#  │     syntax: functionCursor                                                                          │
#  │     -> prints the cursor that let's the user input data inside of a function                        │
#  │                                                                                                     │
#  │ 11. cursorBlink                                                                                     │
#  │     syntax: cursorBlink ["answer"] [delay] <"wrong">                                                │
#  │     -> Reprints cursor and prints the answer of the user with green or red if the input is valid    │
#  │                                                                                                     │
#  │ 12. functioCursorBlink                                                                              │
#  │     syntax: functioCursorBlink [delay]                                                              │
#  │     -> same as cursorBlink for the function cursor                                                  │
#  │                                                                                                     │
#  │ 13. answer                                                                                          │
#  │     syntax: answer ["answer"]                                                                       │
#  │     -> modifies the menu state based on the chosen option                                           │
#  │                                                                                                     │
#  │ 14. menuState                                                                                       │
#  │     syntax: menuState                                                                               │
#  │     -> prints the menu state inside the GUI bar                                                     │
#  │                                                                                                     │
#  │ 15. loading                                                                                         │
#  │     syntax: loading [percentage] <"delete">                                                         │
#  │     -> prints a loding bar with the specified percentage at the bottom of the scree or deletes it   │
#  │                                                                                                     │
#  │ 16. diskPercentage                                                                                  │
#  │     syntax: diskPercentage [percentage] [X] [Y]                                                     │
#  │     -> prints a percentage bar at the specified position                                            │
#  │                                                                                                     │
#  ╰―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――╯
 

function variables {

	# TITLE
	title="Project Manager"
	title_size=${#title}

	# FORMATTING
	height=$(tput lines)
	width=$(tput cols)

	center_h=$((height / 2))
	center_w=$((width / 2))
	center_w_title=$(((width / 2) - (title_size) / 2))

	# NAMES
	name1="Simion Cristina-Florentina"
	name2="Vlad Liviu-Alexandru"
	name3="Vlad Rares"

	# TYPING
	typing_speed=0.01
	menu_height=5
	menu_offset=4

	# GENERAL
	running=1
	menu_state=0

	# ANIMATION
	line_delay=0.005
	title_delay=$typing_speed_general
	dots_wait=0.05

	# COLORS
	no_color="tput sgr0"
	clr_red="tput setaf 1"
	clr_green="tput setaf 2"
	clr_yellow="tput setaf 3"
	clr_blue="tput setaf 4"
	clr_magenta="tput setaf 5"
	clr_cyan="tput setaf 6"

	title_color=$no_color
	subtitle_color=$clr_green
	cursor_color=$clr_green
	credits_color=$clr_green
	line_color=$clr_magenta
	cursor_color2=$clr_magenta
	ans_wrong=$clr_red
	ans_valid=$clr_green
}
# welcomeAnimation <>
function welcomeAnimation {

	local length=${#name1}
	sleep 0.5
	clear
	cursorVis 0
	credits
	color "$title_color"
	goto $center_h $center_w_title
	typing "$title" 0.05
	for (( i = 0; i <= 2; i++ )); do
		printf "_"
		sleep 0.2
		goback 1
		printf " "
		sleep 0.2
		goback 1
	done

	# i=$center_h; while [ $i -gt 0 ]; do ((i--)) # <========================= Replace this for with a while: =======================================
	for (( i = $center_h; i > 0; i-- )); do
		goto $((i+1)) 0
		clearLine
		goto $i $center_w_title
		echo $title
		sleep 0.03
	done


	title
	for (( i = $center_w; i >= 0; i-- )); do
		color "$line_color"
		goto 0 $i
		printf "="
		goto 0 $((width - i))
		printf "="
		goto 2 $i
		printf "="
		goto 2 $((width - i))
		printf "="
		goto $((height - 3)) $i
		printf "="
		goto $height $i
		printf "="
		goto $((height - 3)) $((width - i))
		printf "="
		goto $height $((width - i))
		printf "="
		goto $((height - 5)) $((width - i))
		printf " "
		goto $((height - 4)) $((width - i))
		printf " "
		goto $((height - 2)) $((width - i))
		printf " "
	done
	color "$no_color"
	clear
}

# typing "..." <delay> <height> + <width> <"yes">
function typing {
	cursorVis 0
	local string="$1"
	local delay=$typing_speed

	if [[ $2 != "" ]]; then delay="$2"; fi

	if [[ $3 != "" ]] && [[ $4 != "" ]]; then goto $3 $4; fi

	if [[ $5 == "yes" ]]; then clearLine; fi 

	for (( i = 0; i < ${#string}; i++ )); do
		printf "${string:$i:1}"
		sleep $delay
	done
}

function title {
	savepos
	color "$title_color"
	goto 1 $center_w_title
	echo "$title"
	color "$normal"
	loadpos
}

function creditsDel {
	savepos
	local length=${#name1}

	goto $((height - 5)) $((width - length - 4))
	space $length

	goto $((height - 4)) $((width - length))
	space $length

	goto $((height - 3)) $((width - length))
	space $length

	goto $((height - 2)) $((width - length))
	space $length

	loadpos
}

function credits {
	color "$credits_color"
	local length=$((${#name1}+2))

	goto $((height - 4)) $((width - length - 4))
	echo by:

	goto $((height - 3)) $((width - length))
	echo $name1

	goto $((height - 2)) $((width - length))
	echo $name2

	goto $((height - 1)) $((width - length))
	echo $name3

	goto home
}

function line {
	savepos
	color "$line_color"

	goto 0 0
	printf "%*s" $width | tr " " "="

	goto 2
	printf "%*s" $width | tr " " "="

	goto $((height - 3)) 0
	printf "%*s" $width | tr " " "="
	goto $height 0
	printf "%*s" $width | tr " " "="

	color "$no_color"
	lineText

	loadpos
}

function lineText {
	goto $((height - 2)) 0
	if [[ $menu_state != 0 ]]; then
		space 3; printf "q - exit"
		space 3; printf "b - back"
		space 5; printf "/"
		location;
	else
		space 3; printf "q - exit"
		space 16; printf "/"
	fi
}

function cursor {
	local delay=0.01
	if [[ $1 != "" ]]; then
		sleep $1
	fi
	cursorVis 0
	newLine
	cursor=" $($cursor_color)$USER$($no_color)@$($cursor_color2)ProjectManager$($no_color)> "
	cursor_size=$((${#USER} + 17))
	color "$cursor_color"
	gofwd
	typing $USER $delay
	color "$no_color"
	printf "@"
	color "$cursor_color2"
	typing "ProjectManager" "$delay"
	color "$no_color"
	printf "> "
	cursorVis 1
}

function functionCursor {
	local delay=0.01
	cursorVis 0
	local f_cursor=" $($cursor_color)> $($no_color)"
	local f_cursor_size=3
	color "$cursor_color"
	gofwd
	printf "$f_cursor"
	cursorVis 1
}

function functionCursorBlink {
	goup
	clearLine
	functionCursor
	printf "$($ans_wrong)invalid answer, try again.$($no_color)"
	sleep $1
	clearLine
	echo
	goup
	functionCursor
}

function cursorBlink {
	cursorVis 0
	goup 1
	local text=$1
	local color=$cursor_color
	local delay=$2
	if [[ $3 != "" ]]; then
		color="$ans_wrong"
		text="invalid option"
		delay=1
	fi
	printf "%*s" $((cursor_size + ${#1} + 1)) "$cursor$($color)$text"
	sleep $delay
	color "$no_color"
}

function answer {
	local wrong=""
	case $1 in
		[Qq]|[Qq]uit|[Ee]xit)
			((running=0))
			clear
			cursorVis 1
			sleep 0.1
			exit
			;;

		[Bb]|[Bb]ack)
			((menu_state/=10))
			;;

		[1-9])
			((menu_state=menu_state*10+$1))
			;;
		*)
			wrong="something"
			;;
	esac
		cursorBlink $choice 0.25 $wrong
}

function menuState {
	savepos
	cursorVis 0
	color "$no_color"
	goto $((height - 2)) $((width - 17))
	clearLine "fwd"
	printf "Menu: "
	for (( i = 0; i < ${#menu_state}; i++ )); do
		printf "${menu_state:$i:1}";
		if [[ $((i+1)) != ${#menu_state} ]]; then
			printf ".";
		fi
	done
	# goback;
	# clearLine "fwd";
	loadpos
}

function loading {
	savepos
	if [ $1 -ge 0 ] && [ $1 -le 100 ]; then

		goto $((height-5)) 0
		local percentage=$((($1*$width)/100))
		color "$clr_green"
		printf "%*s" $((percentage)) | tr " " "#"
		color "$no_color"
		printf "%*s" $((width-percentage))| tr " " "."
		goto $((height-5)) 0; printf "[";
		goto $((height-5)) $((width-1)); printf "]";

		percentage_text="| $1% |"

		goto $((height-5)) 6
		 printf "%*s" ${#percentage_text} "$percentage_text" 

	loadpos	
	fi

	if [[ "$2" == "delete" ]]; then
		savepos
		goto $((height-5)) 0
		clearLine
		loadpos
	fi

	loadpos

}

function diskPercentage {
	savepos
	if [ $1 -ge 0 ] && [ $1 -le 100 ]; then
		goto $2 $3
		printf "%*s" 4 " $1%"
		goto $2 $(($3+5))
		local percentage=$((($1*50)/100))
		color "$clr_green"
		printf "%*s" $((percentage)) | tr " " "="
		color "$no_color"
		printf "%*s" $((50-percentage))
		goto $2 $(($3+5)); printf "[";
		goto $2 $(($(($3+5)) + 50)); printf "]";
		goto $2 $(($(($3+5)) + 3))
		percentage_text="| $1% |"

	loadpos	
	fi

	if [[ "$2" == "delete" ]]; then
		savepos
		goto $((height-5)) 0
		clearLine
		loadpos
	fi

	loadpos

}

