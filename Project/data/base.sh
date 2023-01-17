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
#  │                  │ Sourced by main. The base script contains quality-of-life fixes. Simple functions
#  │    base script   │ that already exist in bash but shortened and made easier to read and remember, with
#  │                  │ easier to write syntaxes
#  ╰――――――――――――――――――╯ 
#  ╭―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――╮
#  │ Functions list:                                                                                     │
#  │                                                                                                     │
#  │ 1. goto                                                                                             │
#  │     syntax: goto [height] [width]                                                                   │
#  │     -> moves cursor position to exact location                                                      │
#  │                                                                                                     │
#  │ 2. goback                                                                                           │
#  │     syntax: goback <length>                                                                         │
#  │     -> moves cursor position to same line, specified number of characters to the left               │ 
#  │                                                                                                     │
#  │ 3. gofwd                                                                                            │
#  │     syntax: gofwd <length>                                                                          │
#  │     -> moves cursor position to same line, specified number of characters to the right              │
#  │                                                                                                     │
#  │ 4. goup                                                                                             │
#  │     syntax: goup <lines>                                                                            │
#  │     -> moves cursor position to same column if possible, specified number of lines up               │ 
#  │                                                                                                     │
#  │ 5. cursorVis                                                                                        │
#  │     syntax: cursorVis [1/0]                                                                         │
#  │     -> toggles the cursor visibility                                                                │ 
#  │                                                                                                     │
#  │ 6. savepos                                                                                          │
#  │     syntax: savepos                                                                                 │
#  │     -> saves position of the cursor                                                                 │
#  │                                                                                                     │
#  │ 7. loadpos                                                                                          │
#  │     syntax: loadpos                                                                                 │
#  │     -> loads position from the last savepos and applies it to the cursor                            │
#  │                                                                                                     │
#  │ 8. color                                                                                            │
#  │     syntax: color ["$color_code"]                                                                   │
#  │     -> prints color code to change color of text typed afterwards                                   │
#  │                                                                                                     │
#  │ 9. newLine                                                                                          │
#  │     syntax: newLine <lines>                                                                         │
#  │     -> prints specified number of new lines at the current cursor position                          │
#  │                                                                                                     │
#  │ 10. clearLine                                                                                       │
#  │     syntax: clearLine <"fwd/back">                                                                  │
#  │     -> clears line to the left or right of the cursor, or the entire line                           │
#  │                                                                                                     │
#  │ 11. space                                                                                           │
#  │     syntax: space <chars>                                                                           │
#  │     -> prints specified number of spaces at the current cursor position                             │
#  │                                                                                                     │
#  │ 12. dots                                                                                            │
#  │     syntax: dots <chars>                                                                            │
#  │     -> prints specified number of dots at the current cursor position                               │
#  │                                                                                                     │
#  ╰―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――╯

# ========== CURSOR ========== 

# goto [height] [width]
function goto {
	if [[ $1 == "home" ]] || [[ $1 == "h" ]]; then
		tput home;
	else
		tput cup $1 $2;
	fi
}

# goback <length>
function goback {
	if [[ $1 != "" ]]; then
		tput cub $1
	else
		tput cub 1
	fi
}
gofwd 
sau
gofwd 5

# gofwd <length>
function gofwd {
	if [[ $1 != "" ]]; then
		tput cuf $1
	else
		tput cuf 1
	fi
}

# goup <lines>
function goup {
	if [[ $1 != "" ]]; then
		tput cuu $1
	else
		# tput cuu1
	fi
}

# cursorVis [1/0]
function cursorVis {
	if [[ $1 == 1 ]] || [[ $1 == "v" ]]; then
		tput cnorm;
	elif [[ $1 == 0 ]] || [[ $1 == "i" ]]; then
		tput civis;
	fi
}
# savepos
function savepos {
	tput sc
}

# loadpos
function loadpos {
	tput rc
}

# ========== TEXT ========== 

# color "$color_code"
function color {
	printf "$($1)";	
}

# newLine <lines>
function newLine {
	if [[ $1 != "" ]]; then
		for (( i = 0; i < $1; i++ )); do
			printf "\n";
		done
	else
		printf "\n";
	fi
}

# clearLine <fwd/back>
function clearLine {
	if [[ $1 == "fwd" ]]; then
		tput el;
	elif [[ $1 == "back" ]]; then
		tput el1;
	else
		tput el;
		tput el1;
	fi
}

# space <chars>
function space {
	if [[ $1 != "" ]]; then
		for (( i = 0; i < $1; i++ )); do
			printf " ";
		done
	else
		printf " ";
	fi
}

function dots {
	if [[ $1 != "" ]]; then
		for (( i = 0; i < $1; i++ )); do
			sleep $dots_wait; printf ".";
		done
	else
		sleep $dots_wait; printf ".";
	fi
}

