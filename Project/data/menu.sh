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
#  │                  │ Sourced by main. The menu script holds the menu function. This function defines
#  │   Menu script    │ the structure of the script. It prints the available options for each menu state
#  │                  │ and calls the coresponding function that deals with the functionaliy of each option 
#  ╰――――――――――――――――――╯ 
#  ╭―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――╮ 
#  │ Functions list:                                                                                     │ 
#  │                                                                                                     │
#  │ 1. Menu function                                                                                    │ 
#  │     syntax: menu                                                                                    │ 
#  │     -> defines menu structure, prints options and calls option specific functions                   │
#  │                                                                                                     │
#  │ 2. location function                                                                                │ 
#  │     syntax: location                                                                                │
#  │     -> holds and prints current path inside the script options                                      │
#  │                                                                                                     │ 
#  ╰―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――╯ 

function menu {
	color "$no_color"
	local menu_index=$menu_height
	local delay=$typing_speed
	local offset=$menu_offset
	local subtitle_offset=$((offset + 4))

	case $menu_state in
		0)
		color "$subtitle_color"
		typing "- Main menu -"                             "$delay" "$menu_index" "$subtitle_offset"; ((menu_index+=2)); newLine 2;
		color "$no_color"
		typing "1 - Programming"                           "$delay" "$menu_index" "$offset"; ((menu_index+=1)); newLine;
		typing "2 - System"                                "$delay" "$menu_index" "$offset"; ((menu_index+=1)); newLine;
		typing "3 - Info"                                  "$delay" "$menu_index" "$offset"; ((menu_index+=1)); newLine;					
		;;

		1)
		color "$subtitle_color"
		typing "- Programming -"                           "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
		color "$no_color"
		typing "1 - Installed languages"                   "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
		typing "2 - Install new"                           "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
		typing "3 - Projects "                             "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
		;;
			11)
			color "$subtitle_color"
			typing "- Installed languages -"               "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
			color "$no_color"
			programmingListAll
			printf "\n"
			;;	

			12)
			color "$subtitle_color"
			typing "- Install a new language package -"    "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
			color "$no_color"
			typing "1 - Python"                            "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
			typing "2 - Rust"                              "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
			typing "3 - MySQL"                             "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
			typing "4 - R"                                 "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
			typing "5 - Php"                               "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
			;;	
				121)
				color "$subtitle_color"
				typing "- Install Python -"                "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
				color "$no_color"
				installPython
				printf "\n"
				;;

				122)
				color "$subtitle_color"
				typing "- Install Rust -"                  "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
				color "$no_color"
				installRust
				printf "\n"
				;;

				123)
				color "$subtitle_color"
				typing "- Install MySQL -"                 "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
				color "$no_color"
				installMySQL
				printf "\n"
				;;

				124)
				color "$subtitle_color"
				typing "- Install R -"                     "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
				color "$no_color"
				installR
				printf "\n"
				;;

				125)
				color "$subtitle_color"
				typing "- Install Php -"                   "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
				color "$no_color"
				installPhp
				printf "\n"
				;;

			13)
			color "$subtitle_color"
			typing "- Projects -"                          "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
			color "$no_color"
			typing "1 - List all"                          "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
			typing "2 - Create new"                        "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
			;;
				131)
				color "$subtitle_color"
				typing "- List of all Projects -"          "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
				color "$no_color"
				ProjectsListAll
				;;

				132)
				color "$subtitle_color"
				typing "- Create new project -"            "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
				color "$no_color"
				typing "1 - Python"                        "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
				typing "2 - Rust"                          "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
				typing "3 - MySQL"                         "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
				typing "4 - R"                             "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
				typing "5 - Php"                           "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
				;;
					1321)
					color "$subtitle_color"
					typing "- Create new Python project -" "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
					color "$no_color"
					createProject "python"  
					;;

					1322)
					color "$subtitle_color"
					typing "- Create new Rust project -"   "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
					color "$no_color"
					createProject "rust" 
					;;

					1323)
					color "$subtitle_color"
					typing "- Create new MySQL project -"  "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
					color "$no_color"
					createProject "mysql"
					;;

					1324)
					color "$subtitle_color"
					typing "- Create new R project -"      "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
					color "$no_color"
					createProject "r"
					;;

					1325)
					color "$subtitle_color"
					typing "- Create new Php project -"    "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
					color "$no_color"
					createProject "php"
					;;

		2)
		color "$subtitle_color"
		typing "- System -"                                "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
		color "$no_color"
		typing "1 - Update/Upgrade"                        "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
		typing "2 - Aliases"                               "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
		typing "3 - Create new alias"                      "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
		typing "4 - Disk usage"                            "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
		typing "5 - Operating system"                      "$delay" "$menu_index" "$offset" "yes"; ((menu_index+=1)); newLine;
		;;
			21)
			color "$subtitle_color"
			typing "- Update/Upgrade -"                    "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
			color "$no_color"
			updateUpgrade
			;;

			22)
			color "$subtitle_color"
			typing "- Aliases -"                           "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
			color "$no_color"
			Aliases
			;;

			23)
			color "$subtitle_color"
			typing "- Create new alias -"                  "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
			color "$no_color"
			addAlias;
			;;

			24)
			color "$subtitle_color"
			typing "- Disk usage -"                        "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
			color "$no_color"
			diskUsage
			;;

			25)
			color "$subtitle_color"
			typing "- Operating system info -"             "$delay" "$menu_index" "$subtitle_offset" "yes"; ((menu_index+=2)); newLine 2;
			color "$no_color"
			osInfo
			;;

		3)
		color "$subtitle_color"
		typing "- Info -"                                  "$delay" "$menu_index" "$((center_w-4))" "yes"; ((menu_index+=2)); newLine 2;
		color "$no_color"
		Info
		;;

	esac
}

function location {
	case $menu_state in
		1) printf "Programming/"                          ;;
			11) printf "Programming/Installed languages/~" ;;
			12) printf "Programming/Install new/~"         ;;
			13) printf "Programming/Projects/" ;;
				131) printf "Programming/Projects/List all/~" ;;
				132) printf "Programming/Projects/Create new/~" ;;
				133) printf "Programming/Projects/Archive/~" ;;		
		2) printf "System/"                             ;;
			21) printf "System/Update-Upgrade/~" ;;
			22) printf "System/Aliases/~" ;;
			23) printf "System/Create new/~" ;;
		3) printf "Homeworks/"                           ;;
			31) printf "Homeworks/List all/~" ;;
			32) printf "Homeworks/Create new/~" ;; 
		4) printf "Info/" ;;
			41) printf "Info/System/" ;;
				411) printf "Info/System/Disk usage/~" ;;
				412) printf "Info/System/Home disk utilization/~" ;;
				413) printf "Info/System/Network/~" ;;
			42) printf "Info/Projects/" ;;
				421) printf "Info/System/List all/~" ;;
				422) printf "Info/System/List archived/~" ;;
				423) printf "Info/System/List ongoing/~" ;;
			43) printf "Info/Project Manager/~" ;;  
	esac
}