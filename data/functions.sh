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
#  │                  │ Sourced by main.sh. The functions script holds all of the functionality and operation
#  │ functions script │ of the script. Here are defined all of the installation, creation etc. functions that
#  │                  │ run the code to accomplish the current option's task.
#  ╰――――――――――――――――――╯ 
#  ╭―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――╮
#  │ Functions list:                                                                                     │
#  │                                                                                                     │
#  │ 1. addAlias                                                                                         │
#  │     syntax: addAlias                                                                                │
#  │     -> asks user name and function of desired alias then prints it to ~/.bash_aliases               │
#  │                                                                                                     │
#  │ 2. osInfo                                                                                           │
#  │     syntax: osInfo                                                                                  │
#  │     -> Shows information about running operating system, kernel and others                          │ 
#  │                                                                                                     │
#  │ 3. Info                                                                                             │
#  │     syntax: Info                                                                                    │
#  │     -> Project-Manager info page. Shows data like lines of code, loop counts and more               │
#  │                                                                                                     │
#  │ 4. diskUsage                                                                                        │
#  │     syntax: diskUsage                                                                               │
#  │     -> Computes and shows disk size of the system together with a bar graph of disk usage           │ 
#  │                                                                                                     │
#  │ 5. updateUpgrade                                                                                    │
#  │     syntax: updateUpgrade                                                                           │
#  │     -> runs update and upgrade commands for the user                                                │ 
#  │                                                                                                     │
#  │ 6. ProjectListAll                                                                                   │
#  │     syntax: ProjectListAll                                                                          │
#  │     -> Searches Projects folder and lists all available projects. Creates folder if not existent    │
#  │                                                                                                     │
#  │ 7. ProjectSub                                                                                       │
#  │     syntax: ProjectSub ["language"]                                                                 │
#  │     -> creates folder for specific language's projects. If existent, lists projects inside          │
#  │                                                                                                     │
#  │ 8. Aliases                                                                                          │
#  │     syntax: Aliases                                                                                 │
#  │     -> searches and prints aliases of the current user                                              │
#  │                                                                                                     │
#  │ 9. createProject                                                                                    │
#  │     syntax: createProject                                                                           │
#  │     -> asks language and name of project then creates corresponding folders                         │
#  │                                                                                                     │
#  │ 10. ProgrammingListAll                                                                              │
#  │     syntax: ProgrammingListAll                                                                      │
#  │     -> Lists all installed programming languages together with their versions                       │
#  │                                                                                                     │
#  │ 11. installPython                                                                                   │
#  │     syntax: installPython                                                                           │
#  │     -> installs Python together with it's registries and components.                                │
#  │                                                                                                     │
#  │ 12. installRust                                                                                     │
#  │     syntax: installRust                                                                             │
#  │     -> installs Rust together with it's registries and components.                                  │
#  │                                                                                                     │
#  │ 13. installMySQL                                                                                    │
#  │     syntax: installMySQL                                                                            │
#  │     -> installs MySQL together with it's registries and components.                                 │
#  │                                                                                                     │
#  │ 14. installR                                                                                        │
#  │     syntax: installR                                                                                │
#  │     -> installs R together with it's registries and components.                                     │
#  │                                                                                                     │
#  │ 15. installPhp                                                                                      │
#  │     syntax: installPhp                                                                              │
#  │     -> installs Php together with it's registries and components.                                   │
#  │                                                                                                     │
#  ╰―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――╯

function addAlias {

	local index=$((menu_height+2))
	savepos	
	typing "What is the name of the alias you want to add?" "$delay" "$index" "$menu_offset" "yes"; newLine;
	functionCursor
	read alias_name
	case $alias_name in
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
	esac

	while [[ "$alias_name" == "" ]]; do
		functionCursorBlink 0.5
		read alias_name
	done

	for (( i = 20; i >=7; i-- )); do
		goto $i 0
		clearLine
	done

	loadpos
	typing "What is the command for the alias you want to create?" "$delay" "$index" "$menu_offset" "yes"; newLine;
	functionCursor
	read "alias_command"

	while [[ "$alias_command" == "" ]]; do
		functionCursorBlink 0.5
		read "alias_command"
	done

		case $alias_command in
		[Qq]|[Qq]uit|[Ee]xit)
			((running=0))
			clear
			cursorVis 1
			sleep 0.1
			exit
			;;

		[Bb]|[Bb]ack)
			((menu_state/=10))
			return 
			;;
	esac

	for (( i = 20; i >=7; i-- )); do
		goto $i 0
		clearLine
	done

	local new_alias="alias $alias_name=\"$alias_command\""

	loadpos
	cursorVis 0

	typing "$($clr_green) > $($no_color)your command is: $new_alias" "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	

	typing "$($clr_green) > $($no_color)adding your command to ~/.bash_aliases" "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	 

	echo "$new_alias" >> /home/$USER/.bash_aliases

	typing "$($clr_green) > $($no_color)to reload ~/.bashrc, run \". ~/.bashrc\" after exiting" "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	



	typing "$($clr_green) > $($no_color)done"   "$delay" "$index" "$menu_offset" "yes"; dots 3;
	
	typing " type b to go back."; newLine
	
}

function osInfo {
	local index=$((menu_height+2))

	typing "$($clr_green) > $($no_color)kernel name             $( uname -s )"   "$delay" "$index" "$menu_offset" "yes"; ((index++));
	typing "$($clr_green) > $($no_color)network node hostname   $( uname -n )"   "$delay" "$index" "$menu_offset" "yes"; ((index++));
	typing "$($clr_green) > $($no_color)kernel release          $( uname -r )"   "$delay" "$index" "$menu_offset" "yes"; ((index++));
	typing "$($clr_green) > $($no_color)kernel version          $( uname -v )"   "$delay" "$index" "$menu_offset" "yes"; ((index++));
	typing "$($clr_green) > $($no_color)machine hardware name   $( uname -m )"   "$delay" "$index" "$menu_offset" "yes"; ((index++));
	typing "$($clr_green) > $($no_color)processor type          $( uname -p )"   "$delay" "$index" "$menu_offset" "yes"; ((index++));
	typing "$($clr_green) > $($no_color)hardware platform       $( uname -i )"   "$delay" "$index" "$menu_offset" "yes"; ((index++));
	typing "$($clr_green) > $($no_color)operating system        $( uname -o )"   "$delay" "$index" "$menu_offset" "yes"; ((index++)); newLine
	
}

function diskUsage {
	local retry=1
	local first=1
	local length1=0
	local length2=0
	local counter=2
	local index=$((menu_height+2))

	goto $index $((menu_offset+1))
	while read -r line;	do
		if [ $first	-eq 1 ]; then
			first=0
			echo "Path"
			((index+=2))
		else
			if [ ${#line} -gt $length1 ]; then
				length1=${#line} 
			fi
			goto $index $((menu_offset+1))
			echo $line | column -t
			((index++))
		fi
		((counter++))
	done <<< $(df -h | awk '{print $6}')

	index=$((menu_height+2)); first=1

	(( length1=length1 + menu_offset + 2 ))
	goto $index $length1
	while read -r line;	do
		if [ $first	-eq 1 ]; then
			first=0
			echo "Size"
			((index+=2))
		else
			if [ ${#line} -gt $length2 ]; then
				length2=${#line} 
			fi
			goto $index $length1
			echo $line | sed 's/G/ Gb/g'
			((index++))
		fi
	done <<< $(df -h | awk '{print $2}')
	index=$((menu_height+2)); first=1

	((length2=length2+length1+4))
	goto $index $length2
	while read -r line;	do
		if [ $first	-eq 1 ]; then
			first=0
			echo "Usage"
			((index+=2))
		else
			goto $index $length2
			    $(echo $line | sed 's/%//g') $index $length2
			((index++))
		fi
	done <<< $(df -h | awk '{print $5}')
	index=$((menu_height+2)); first=1

	typing "$($clr_green) > $($no_color)type b to go back" "$delay" "$((index+counter))" "$menu_offset" "yes";((index++)); dots 3; newLine

}

function updateUpgrade {
	local index=$((menu_height+2))

	typing "$($clr_green) > $($no_color)Do not exit the program while the process is running."   "$delay" "$index" "$menu_offset" "yes"; ((index++));
	
	typing "$($clr_green) > $($no_color)Updating"   "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3 0.5;
	sudo apt update >/dev/null 2>&1;
	typing "$($clr_green) > $($no_color)Upgrading"  "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3 0.5;
	sudo apt upgrade -y >/dev/null 2>&1;

	typing "$($clr_green) > $($no_color)done"       "$delay" "$index" "$menu_offset" "yes";((index++)); dots 3 0.2;
	
	typing " type b to go back."; newLine
}

function ProjectsListAll {
	cd "$dir/Projects"
	local index=$((menu_height+2))

	if [[ ! -d "$dir/Projects" ]]; then
		typing "$($clr_green) > $($no_color)You have no projects. Creating a projects folder" "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
		sudo mkdir --mode=777 "$dir/Projects" >/dev/null 2>&1
		typing "$($clr_green) > $($no_color)type b to go back."   "$delay" "$index" "$menu_offset" "yes"; newLine
		return
	elif [ ! "$(ls -A "$dir/Projects")" ]; then
		typing "$($clr_green) > $($no_color)Your projects folder is empty" "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
		typing "$($clr_green) > $($no_color)type b to go back."   "$delay" "$index" "$menu_offset" "yes"; newLine
		return
	fi

	ProjectSub "Python"; 

	ProjectSub "Rust"; 

	ProjectSub "MySQL"; 

	ProjectSub "R"; 

	ProjectSub "Php"; 

	newLine
}

function ProjectSub {
	local lang="$1"
	if [[ -d "$dir/Projects/$lang" ]]; then
		cd "$dir/Projects/$lang";

		typing "$($clr_green) > $($no_color)$lang" "$delay" "$index" "$menu_offset" "yes"; ((index++));
		printf " $(find "$dir/Projects/$lang"  -mindepth 1 -maxdepth 1 -type d | wc -l;)"; newLine

		while read -r line;	do
		typing "$($clr_green) - $($no_color)$line" "$delay" "$index" "$((menu_offset + 4))" "yes"; ((index++));
		done <<< $(sudo stat -c "%n" * | column -t -s,)
		((index++));
	fi
}

function Project {
	local lang="$1"
	if [[ -d "$dir/Projects/$lang" ]]; then
		cd "$dir/Projects/$lang";

		typing "$counter - $lang" "$delay" "$index" "$menu_offset" "yes"; ((index++));
		printf " $(find "$dir/Projects/$lang"  -mindepth 1 -maxdepth 1 -type d | wc -l;)"; newLine

		((counter++));
	fi
}

function createProject {
	local index=$((menu_height+2))
	local path=""
	local lang=""
	case $1 in
		python)
			path="$dir/Projects/Python"
			lang="Python"			
		;;

		rust)
			path="$dir/Projects/Rust"
			lang="Rust"
		;;

		mysql)
			path="$dir/Projects/MySQL"
			lang="MySQL"			
		;;	

		r)
			path="$dir/Projects/R"
			lang="R"			
		;;

		php)
			path="$dir/Projects/Php"
			lang="Php"			
		;;

	esac

	typing "$($clr_green) > $($no_color)Enter the name for your new $lang project:" "$delay" "$index" "$menu_offset" "yes"; ((index++)); newLine
	goto $index $menu_offset 
	printf "$($clr_green) > $($no_color)"
	cursorVis 1
	read funcname
	((index++));
	cursorVis 0
	typing "$($clr_green) > $($no_color)Creating your folders" "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	if [[ ! -d "$dir/Projects" ]]; then
		typing "$($clr_green) > $($no_color)You have no projects folder. Creating the folder" "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
		sudo mkdir --mode=777 "$dir/Projects" 
	fi
	if [[ ! -d "$path" ]]; then
		typing "$($clr_green) > $($no_color)You have no $lang projects folder. Creating the folder" "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
		sudo mkdir --mode=777 "$path" >/dev/null 2>&1
	fi
	sudo mkdir --mode=777 "$path/$funcname" 
	sudo mkdir --mode=777 "$path/$funcname/data" 

	typing "$($clr_green) > $($no_color)done"   "$delay" "$index" "$menu_offset" "yes";((index++)); dots 3;
	
	typing " type b to go back."; newLine
}

function programmingListAll {
	local index=$((menu_height+2))
	local vers


	typing "Python: "             "$delay" "$index" "$offset"; ((index++))
	python3 --version >/dev/null 2>&1
	local ans=$?
	if [ $ans -eq 0 ]; then
		goto $((index-1)) 11
		typing "  $(python3 --version | sed "s/Python\s//")"
		goto $((index-1)) 25
		color "$clr_green"
		typing " installed" "$delay"
		color "$no_color"
	else
		goto $((index-1)) 25
		color "$clr_red"
		typing " not installed" "$delay"
		color "$no_color"
	fi

	typing "Rust: "             "$delay" "$index" "$offset"; ((index++))
	rustc --version >/dev/null 2>&1
	local ans=$?
	if [ $ans -eq 0 ]; then
		goto $((index-1)) 13
		typing "$(rustc --version | sed "s/rustc\s//" )"
		goto $((index-1)) 25
		color "$clr_green"
		typing " installed" "$delay"
		color "$no_color"
	else
		goto $((index-1)) 25
		color "$clr_red"
		typing " not installed" "$delay"
		color "$no_color"
	fi

	typing "MySQL: "             "$delay" "$index" "$offset"; ((index++))
	mysql --version >/dev/null 2>&1
	local ans=$?
	if [ $ans -eq 0 ]; then
		goto $((index-1)) 13
		typing "$(mysql --version | grep -o '[0-9]\.[0-9]\.[0-9][0-9]' )"
		goto $((index-1)) 25
		color "$clr_green"
		typing " installed" "$delay"
		color "$no_color"
	else
		goto $((index-1)) 25
		color "$clr_red"
		typing " not installed" "$delay"
		color "$no_color"
	fi

	typing "R: "             "$delay" "$index" "$offset"; ((index++))
	R --version >/dev/null 2>&1
	local ans=$?
	
	if [ $ans -eq 0 ]; then
		goto $((index-1)) 11
		typing "  $(R --version | grep -o '[0-9]\.[0-9]\.[0-9]')"
		goto $((index-1)) 25
		color "$clr_green"
		typing " installed" "$delay"
		color "$no_color"
	else
		goto $((index-1)) 25
		color "$clr_red"
		typing " not installed" "$delay"
		color "$no_color"
	fi

	typing "Php: "             "$delay" "$index" "$offset"; ((index++))
	php --version >/dev/null 2>&1
	local ans1=$?
	php7 --version >/dev/null 2>&1
	local ans2=$?
	php8 --version >/dev/null 2>&1
	local ans3=$?
	if [ $ans1 -eq 0 ] || [ $ans2 -eq 0 ] || [ $ans3 -eq 0 ]; then
		goto $((index-1)) 11
		typing "  $(php --version | grep -o -m 1 '[0-9]\.[0-9]\.[0-9]')"
		goto $((index-1)) 25
		color "$clr_green"
		typing " installed" "$delay"
		color "$no_color"
	else
		goto $((index-1)) 25
		color "$clr_red"
		typing " not installed" "$delay"
		color "$no_color"
	fi

}

function installPython {
	
	local index=$((menu_height+2))

	typing "$($clr_green) > $($no_color)adding repository" "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	

	sudo add-apt-repository ppa:deadsnakes/ppa -y >/dev/null 2>&1;

	typing "$($clr_green) > $($no_color)updating repositories"   "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	 

	sudo apt update >/dev/null 2>&1;

	typing "$($clr_green) > $($no_color)installing python3.10"   "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	

	sudo apt install -y python3.10 >/dev/null 2>&1;
	sudo apt update >/dev/null 2>&1;

	typing "$($clr_green) > $($no_color)done"   "$delay" "$index" "$menu_offset" "yes"; dots 3;
	
	typing " type b to go back."; newLine
}

function installRust {

	local index=$((menu_height+2))

	loading 0

	typing "$($clr_green) > $($no_color)adding repository" "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	

	sudo apt install curl build-essential gcc make -y >/dev/null 2>&1; loading 25

	typing "$($clr_green) > $($no_color)updating repositories"   "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	 

	sudo apt update >/dev/null 2>&1; loading 50

	typing "$($clr_green) > $($no_color)installing Rust 1.53.0"   "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	

	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh >/dev/null 2>&1;
	sudo apt install rustc -y >/dev/null 2>&1; loading 75
	sudo apt update >/dev/null 2>&1; loading 100

	typing "$($clr_green) > $($no_color)done"   "$delay" "$index" "$menu_offset" "yes"; dots 3;
	
	typing " type b to go back."; newLine

	loading 0 "delete"

}

function installMySQL {

	local try=0
	loading 0

	local index=$((menu_height+2))

	loading 20

	typing "$($clr_green) > $($no_color)adding repository" "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	

	loading 40

	typing "$($clr_green) > $($no_color)updating repositories"   "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	 

	loading 60

	typing "$($clr_green) > $($no_color)installing MySQL"   "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	

	sudo apt install -y mysql-server >/dev/null 2>&1;
	loading 70
	sudo apt update >/dev/null 2>&1;

	loading 80
	loading 100

	typing "$($clr_green) > $($no_color)done"   "$delay" "$index" "$menu_offset" "yes"; dots 3;
	
	typing " type b to go back."; newLine

	loading 0 "delete"

}

function installR {
	local index=$((menu_height+2))
	local load=0

	loading $load; ((load+=1))

	typing "$($clr_green) > $($no_color)adding repository" "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	

	if [[ "$(grep "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" /etc/apt/sources.list)" != "" ]]; then
		sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" | sudo tee -a /etc/apt/sources.list  >/dev/null 2>&1;
	fi

	if [[ "$(grep "deb https://cloud.r-project.org/bin/linux/ubuntu jammy-cran40/" /etc/apt/sources.list)" != "" ]]; then
			sudo echo "deb https://cloud.r-project.org/bin/linux/ubuntu jammy-cran40/" | sudo tee -a /etc/apt/sources.list  >/dev/null 2>&1;
	fi
	loading $load; ((load+=1))
	gpg --keyserver keyserver.ubuntu.com --recv-key E298A3A825C0D65DFD57CBB651716619E084DAB9  >/dev/null 2>&1;
	gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | sudo apt-key add -  >/dev/null 2>&1;
	loading $load; ((load+=1))


	typing "$($clr_green) > $($no_color)updating repositories"   "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	 

	sudo apt update >/dev/null 2>&1;

	typing "$($clr_green) > $($no_color)installing Java Runtime Environment"   "$delay" "$index" "$menu_offset" "yes"; ((index++));
	dots 3

	sudo apt-get install -y default-jre >/dev/null 2>&1;
	loading $load; ((load+=1))
	
	typing "$($clr_green) > $($no_color)installing Java Development Kit"   "$delay" "$index" "$menu_offset" "yes"; ((index++));
	dots 3

	sudo apt-get install -y default-jdk >/dev/null 2>&1;
	loading $load; ((load+=1))


	typing "$($clr_green) > $($no_color)installing r-base"                 "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y r-base >/dev/null 2>&1;               loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing r-base-core"            "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y r-base-core >/dev/null 2>&1;          loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing r-base-dev"             "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y r-base-dev >/dev/null 2>&1;           loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing r-cran-xml"             "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y r-cran-xml >/dev/null 2>&1;           loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing r-cran-rjava"           "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y r-cran-rjava >/dev/null 2>&1;         loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing libcurl4-openssl-dev"   "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y libcurl4-openssl-dev >/dev/null 2>&1; loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing libssl-dev"             "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y libssl-dev >/dev/null 2>&1;           loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing libxml2-dev"            "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y libxml2-dev >/dev/null 2>&1;          loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing openjdk-7-*"            "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y openjdk-7-* >/dev/null 2>&1;          loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing libgdal-dev"            "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y libgdal-dev >/dev/null 2>&1;          loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing libproj-dev"            "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y libproj-dev >/dev/null 2>&1;          loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing libgsl-dev"             "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y libgsl-dev >/dev/null 2>&1;           loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing xml2"                   "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y xml2 >/dev/null 2>&1;                 loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing default-jre"            "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y default-jre >/dev/null 2>&1;          loading $load; ((load+=3));
 
	typing "$($clr_green) > $($no_color)installing default-jdk"            "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y default-jdk >/dev/null 2>&1;          loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing mesa-common-dev"        "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y mesa-common-dev >/dev/null 2>&1;      loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing libglu1-mesa-dev"       "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y libglu1-mesa-dev >/dev/null 2>&1;     loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing freeglut3-dev"          "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y freeglut3-dev >/dev/null 2>&1;        loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing mesa-common-dev"        "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y mesa-common-dev >/dev/null 2>&1;      loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing libx11-dev"             "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y libx11-dev >/dev/null 2>&1;           loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing r-cran-rgl"             "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y r-cran-rgl >/dev/null 2>&1;           loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing r-cran-rglpk"           "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y r-cran-rglpk >/dev/null 2>&1;         loading $load; ((load+=3));
  
	typing "$($clr_green) > $($no_color)installing r-cran-rsymphony"       "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y r-cran-rsymphony >/dev/null 2>&1;     loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing r-cran-plyr"            "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y r-cran-plyr >/dev/null 2>&1;          loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing r-cran-reshape"         "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y r-cran-reshape >/dev/null 2>&1;       loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing r-cran-reshape2"        "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y r-cran-reshape2 >/dev/null 2>&1;      loading $load; ((load+=3));

	typing "$($clr_green) > $($no_color)installing r-cran-rmysql"          "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3
	sudo apt-get install -y r-cran-rmysql >/dev/null 2>&1;        loading $load; ((load+=3));

	sudo apt update >/dev/null 2>&1;
	sudo R CMD javareconf >/dev/null 2>&1;
	sudo R CMD INSTALL >/dev/null 2>&1;

	typing "$($clr_green) > $($no_color)done"                              "$delay" "$index" "$menu_offset" "yes"; dots 3;
	
	typing " type b to go back."; newLine
	loading 0 "delete"

}

function installPhp {

	local try=0
	loading 0

	local index=$((menu_height+2))

	loading 20

	typing "$($clr_green) > $($no_color)adding repository" "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;

	sudo add-apt-repository ppa:ondrej/php -y >/dev/null 2>&1;
	loading 40

	typing "$($clr_green) > $($no_color)updating repositories"   "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;
	
	sudo apt update >/dev/null 2>&1;
	loading 60

	typing "$($clr_green) > $($no_color)installing MySQL"   "$delay" "$index" "$menu_offset" "yes"; ((index++)); dots 3;

	sudo apt-get install php -y >/dev/null 2>&1;
	loading 70
	

	loading 80
	loading 100

	typing "$($clr_green) > $($no_color)done"   "$delay" "$index" "$menu_offset" "yes"; dots 3;
	
	typing " type b to go back."; newLine

	loading 0 "delete"


}

function Aliases {
	local index=$((menu_height+2))
	local i; local string1=""; local string2=""; local max_size=0;
	local an_file="$dir/data/alias_names.txt" ;
	local af_file="$dir/data/alias_fncs.txt";

	sudo touch $an_file; sudo chmod 777 $an_file
	sudo touch $af_file; sudo chmod 777 $af_file

	cat /home/$USER/.bash_aliases | sed "s/^alias\s//g" | sed "s/=/ -  /g" | sed "s/\"//g" | awk '{print $1}' > $an_file
  	cat /home/$USER/.bash_aliases | sed "s/^alias\s//g" | sed "s/=/ -  /g" | sed "s/\"//g" | cut -d" "  -f4- > $af_file


	while read -r line; do
	alias_names+=("$line")
	if [[ ${#line} -gt max_size ]]; then
		max_size=${#line}
	fi
	done < "$an_file"

	while read -r line; do
	alias_fncs+=("$line")
	done < "$af_file"

	for i in "${!alias_names[@]}"; do
		string1="${alias_names[$i]}"; 
		string2="${alias_fncs[$i]}"

		typing "$($clr_green) > $($no_color)$string1"                                   "$delay" "$index" "$menu_offset" "yes";
		typing "-> $($clr_green)\"$($no_color) $string2 $($clr_green)\"$($no_color)"    "$delay" "$index" "$((menu_offset+max_size+4))"; ((index++));
	done

	sudo rm "$an_file"
	sudo rm "$af_file"
}

function Info {
	local index=$((menu_height+2))
	local space=20
	local offset=$((center_w-12))
	savepos
	color "$clr_magenta"
	goto $((height - 3)) $((width - ${#name1} - 3))
	printf "%-*s" $((${#name1}+1)) "|"
	printf "|"

	goto $((height - 2)) $((width - ${#name1} - 3))
	printf "%-*s" $((${#name1}+1)) "|"
	printf "|"
	goto $height $((width - ${#name1} - 3))
	printf "%-*s" $((${#name1}+1)) "|"
	printf "|"

	color "$no_color"

	goto $((height - 3)) $((width - ${#name1}-2))
	printf "$name1"

	goto $((height - 2)) $((width - ${#name1}-2))
	printf "$name2"

	goto $((height - 1)) $((width - ${#name1}-2))
	printf "$name3"

	color "$no_color"
	loadpos

	typing "$($clr_green)> $($no_color)Lines of code: "   "$delay" "$index" "$offset" "yes";
	local lines=0
	while read -r line; do
		if [ $lines -eq 8 ]; then
			string=$(echo $line | awk '{print $6}')
			typing "$string"   "$delay" "$index" "$((offset+$space))"; ((index++))
		fi
		((lines++))
	done <<< $(cloc $dir)

	typing "$($clr_green)> $($no_color)Files: "   "$delay" "$index" "$offset";
	local lines=0
	while read -r line; do
		if [ $lines -eq 8 ]; then
			string=$(echo $line | awk '{print $3}')
			typing "$string"   "$delay" "$index" "$((offset+$space))"; ((index++))
		fi
		((lines++))
	done <<< $(cloc $dir)

	typing "$($clr_green)> $($no_color)Prints: "   "$delay" "$index" "$offset";
	local prints=0
	((prints+=    $(grep -o -i printf "$dir/data/functions.sh" | wc -l)))
	((prints+=    $(grep -o -i printf "$dir/data/menu.sh" | wc -l)))
	((prints+=    $(grep -o -i printf "$dir/data/base.sh" | wc -l)))
	((prints+=    $(grep -o -i printf "$dir/data/backend.sh" | wc -l)))
	((prints+=    $(grep -o -i typing "$dir/data/functions.sh" | wc -l)))
	((prints+=    $(grep -o -i typing "$dir/data/menu.sh" | wc -l)))
	((prints+=    $(grep -o -i typing "$dir/data/base.sh" | wc -l)))
	((prints+=    $(grep -o -i typing "$dir/data/backend.sh" | wc -l)))
	typing "$prints"   "$delay" "$index" "$((offset+$space))"; ((index++))

	typing "$($clr_green)> $($no_color)Functions: "   "$delay" "$index" "$offset";
	local functions=0
	((functions+= $(grep -o -i function "$dir/data/functions.sh" | wc -l)))
	((functions+= $(grep -o -i function "$dir/data/menu.sh" | wc -l)))
	((functions+= $(grep -o -i function "$dir/data/base.sh" | wc -l)))
	((functions+= $(grep -o -i function "$dir/data/backend.sh" | wc -l)))
	typing "$functions"   "$delay" "$index" "$((offset+$space))"; ((index++))

	typing "$($clr_green)> $($no_color)While loops: "   "$delay" "$index" "$offset";
	local whiles=0
	((whiles+=    $(grep -o -i while "$dir/data/functions.sh" | wc -l)))
	((whiles+=    $(grep -o -i while "$dir/data/menu.sh" | wc -l)))
	((whiles+=    $(grep -o -i while "$dir/data/base.sh" | wc -l)))
	((whiles+=    $(grep -o -i while "$dir/data/backend.sh" | wc -l)))
	typing "$whiles"   "$delay" "$index" "$((offset+$space))"; ((index++))

	typing "$($clr_green)> $($no_color)For loops: "   "$delay" "$index" "$offset";
	local fors=0
	((fors+=      $(grep -o -i for "$dir/data/functions.sh" | wc -l)))
	((fors+=      $(grep -o -i for "$dir/data/menu.sh" | wc -l)))
	((fors+=      $(grep -o -i for "$dir/data/base.sh" | wc -l)))
	((fors+=      $(grep -o -i for "$dir/data/backend.sh" | wc -l)))
	typing "$fors"   "$delay" "$index" "$((offset+$space))"; ((index++))

	typing "$($clr_green)> $($no_color)Ifs: "   "$delay" "$index" "$offset";
	local ifs=0
	((ifs+=       $(grep -o -i if "$dir/data/functions.sh" | wc -l)))
	((ifs+=       $(grep -o -i if "$dir/data/menu.sh" | wc -l)))
	((ifs+=       $(grep -o -i if "$dir/data/base.sh" | wc -l)))
	((ifs+=       $(grep -o -i if "$dir/data/backend.sh" | wc -l)))
	typing "$ifs"   "$delay" "$index" "$((offset+$space))"; ((index++))

	typing "$($clr_green)> $($no_color)Sed: "   "$delay" "$index" "$offset";
	local seds=0
	((seds+=       $(grep -o -i sed "$dir/data/functions.sh" | wc -l)))
	((seds+=       $(grep -o -i sed "$dir/data/menu.sh" | wc -l)))
	((seds+=       $(grep -o -i sed "$dir/data/base.sh" | wc -l)))
	((seds+=       $(grep -o -i sed "$dir/data/backend.sh" | wc -l)))
	typing "$seds"   "$delay" "$index" "$((offset+$space))"; ((index++))

	typing "$($clr_green)> $($no_color)Grep: "   "$delay" "$index" "$offset";
	local greps=0
	((greps+=       $(grep -o -i grep "$dir/data/functions.sh" | wc -l)))
	((greps+=       $(grep -o -i grep "$dir/data/menu.sh" | wc -l)))
	((greps+=       $(grep -o -i grep "$dir/data/base.sh" | wc -l)))
	((greps+=       $(grep -o -i grep "$dir/data/backend.sh" | wc -l)))
	typing "$greps"   "$delay" "$index" "$((offset+$space))"; ((index+=15))

	newLine 5
	
}

			

		