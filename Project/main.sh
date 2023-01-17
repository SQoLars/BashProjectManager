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
#
#   █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
#   █ 		There are 2 parts to the project. First, Programming - The script let's the user see which   █
#   █ programming languages (from python, rust, mysql, r and php) are installed on the system or install █
#   █ one of them if not already installed. Also, the Projects option, creates folders for the user, and █
#   █ lists project folders based on the programming language.                                           █
#   █                                                                                                    █
#   █ 		Sencond, System - The script is able to list and create aliases for the user, update and     █
#   █ upgrade, shows disk usage with sizes and usage percentages and show information about the running  █
#   █ operating system, kernel version and more.                                                         █
#   █                                                                                                    █
#   █ 		Additionally, the script has the option to count it's own number of code lines, for and      █
#   █ while loops, if statements and printf's and echo usages.                                           █
#   █                                                                                                    █
#   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀    
#  ╭――――――――――――――――――╮ 
#  │                  │ Source function to retrieve functions from the other files in the project and runs
#  │   Main script    │ the main while loop which calls the necessary functions in the right order.
#  │                  │ 
#  ╰――――――――――――――――――╯ 

clear

dir="${BASH_SOURCE%/*}"                         # Finding the path to main.sh and storing 
if [[ ! -d "$dir" ]]; then dir="$PWD"; fi       # it in a variable for sourcing the 
source "$dir/data/functions.sh"                 # other files and for later use
source "$dir/data/menu.sh"                      #
source "$dir/data/base.sh"                      #
source "$dir/data/backend.sh"                   #  

sudo pwd >/dev/null 2>&1                        # Prompting user for password at the beggining
                                                # so the script will run smoothly afterwards

chown -R $(whoami) ~/.gnupg/ >/dev/null 2>&1    # Fixing usual bug created by the cloc command 
chmod 600 ~/.gnupg/* >/dev/null 2>&1            # installed for the info pannel. It sometimes
chmod 700 ~/.gnupg >/dev/null 2>&1              # messes up permissions for the .gnupg file

function main {                                 # Main function of the script.
	while [[ $running == 1 ]]; do               # It hosts the main while loop, which exited
		clear                                   # will prompt the script to clear the screen
		title                                   # and exit to the terminal.
		line                                    # It calls the functions responsible for the
		menuState                               # gui: title, line and cursor
		menu                                    # but also the functions responsible for the 
		cursor                                  # functionality of the program, mainly the
		read choice                             # menuState and menu functions.
		answer $choice                          # menu is the most important function in here
	done                                        # and it is the one that creates and shows the
}                                               # entire structure of the script

variables                                       # Variables are called in a sepparate function
menu_state=3                                    # to make it easier to change parameters. The 
cursorVis 0                                     # menu_state variable holds the current page
clear                                           # that should be shown. WelcomeAnimation is called
welcomeAnimation                                # only once, showing the ... welcome animation...
main                                            # lastly, calling main to start the script