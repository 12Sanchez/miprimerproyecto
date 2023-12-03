#!/bin/bash

#Colours
green="\e[0;32m\033[1m"
end="\033[0m\e[0m"
red="\e[0;31m\033[1m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"
purple="\e[0;35m\033[1m"
cyan="\e[0;36m\033[1m"
gray="\e[0;37m\033[1m"

# Banner

#!/bin/bash

echo "██████╗░░█████╗░███████╗██╗░░░██╗███████╗██████╗░"
echo "██╔══██╗██╔══██╗██╔════╝██║░░░██║██╔════╝██╔══██╗"
echo "██║░░██║██║░░██║█████╗░░╚██╗░██╔╝█████╗░░██║░░██║"
echo "██║░░██║██║░░██║██╔══╝░░░╚████╔╝░██╔══╝░░██║░░██║"
echo "██████╔╝╚█████╔╝███████╗░░╚██╔╝░░███████╗██████╔╝"
echo "╚═════╝░░╚════╝░╚══════╝░░░╚═╝░░░╚══════╝╚═════╝░"

echo "Welcome to JS-OSINT - Your Open Source Intelligence Tool in Bash!"


# Declaracion de variables
username=""
file=$(readlink -f $0)
current_path=$(dirname $file)
info_path=$current_path/info
declare githome=$HOME/git
declare extensionhome=$HOME/extensiones
declare userdesktop=""

trap ctrl_c INT

#Función que permite pulsar ctrl+x en cualquier momento.
function ctrl_c() {
	echo -e "\n${yellow}[*]${end}${gray}Saliendo...${end}"
	tput cnorm

	exit 0
}

echo "================"
echo -e "${purple}======UPDATE PYTHON IN YOUR SYSTEM===============${end}"


			sudo apt update --force-yes
			sudo apt install python3.9 --force-yes

echo -e "${yellow}======UPDATED PYTHON IN YOUR SYSTEM 3.9===============${end}"


while true; do
	echo "██████╗░░█████╗░███████╗██╗░░░██╗███████╗██████╗░"
	echo "██╔══██╗██╔══██╗██╔════╝██║░░░██║██╔════╝██╔══██╗"
	echo "██║░░██║██║░░██║█████╗░░╚██╗░██╔╝█████╗░░██║░░██║"
	echo "██║░░██║██║░░██║██╔══╝░░░╚████╔╝░██╔══╝░░██║░░██║"
	echo "██████╔╝╚█████╔╝███████╗░░╚██╔╝░░███████╗██████╔╝"
	echo "╚═════╝░░╚════╝░╚══════╝░░░╚═╝░░░╚══════╝╚═════╝░"

	echo "Welcome to JS-OSINT - Your Open Source Intelligence Tool in Bash!"
    echo "===== Menu ====="
	echo "Welcome to all tools h4ck1ng.com"
    echo "1. Use tool Osintgram"
	echo "2. Use tool Nexfil"
	echo "3. Use tool theHarvester"
	echo "4. Use tool dmitry"
	echo "5. Use tool maltego"
	echo "6. Use tool recon-ng"
	echo "7. Use tool osint"
    echo "8. Use tool osrFramework"
    echo "9. Use tool exiftool"
	echo "10. spiderfoot"
    echo "11: UPDATE !!"
	echo "12. Bookmarks"
    echo "13. Exit"
    echo "================"

    read -p "Enter your choice: " choice

    case $choice in
		0)
        echo "Installing all tools"
		echo "Osintgram
    					nexfil
						theHarvester
						dmitry
						maltego
						recon-ng
						dante-osint-suite-tools
						osrframework
						spiderfoot
						exiftool"
		echo -e "${gray}*****  Instalación de repositorios GitHub  *****${end}"
			declare -a repos=(
				Datalux/Osintgram
				laramies/theHarvester
				lanmaster53/recon-ng
				Quantika14/osint-suite-tools
				smicallef/spiderfoot
				thewhiteh4t/nexfil
			)

			for repo in ${repos[@]}; do
				echo -ne "\n${yellow}[*]${endC}${blue} Repositorio ${end}${purple} $repo${end}${blue}...${end}"

				git clone https://github.com/$repo $githome/$(echo $repo | awk -F '/' '{print $NF}') >/dev/null 2>&1

				checkV
			done
		;;
        1)
            if check_tool "tool1"; then
                echo "Tool 1 is installed."
            else
                read -p "Tool 1 is not installed. Do you want to download it? (y/n): " download_choice
               
                    git clone https://github.com/Datalux/Osintgram.git $githome/$(echo Datalux/Osintgram | awk -F '/' '{print $NF}') >/dev/null 2>&1
                    echo "Downloading Tool 1..."
					checkV
            
                    echo "Exiting."
					cd $githome/Osintgram
					python3 -m venv venv
					echo "Launch python3"
					source venv/bin/activate
					echo "Install requirements pip"

					python3 -m pip install -r requirements.txt

					read -p "Please write your instagram username " username
					read -p "Please write your instagram pwd " pwd

					if [ -z "$username" ]; then
						echo "Empty value"
						exit 1
					fi
					cd config/
					
					
					cat credentials.ini
					cd ..
					python3 main.py $username
					python -m webbrowser https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.thesun.co.uk%2Fsport%2F17384932%2Fcristiano-ronaldo-siu-celebration-what-does-it-mean-why-world-cup%2F&psig=AOvVaw3kPK7mzkb0JeoqlKbK986F&ust=1701608545714000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPCd7K718IIDFQAAAAAdAAAAABAE
                fi
        
            ;;
        2)
			git clone https://github.com/thewhiteh4t/nexfil.git $githome/$(echo thewhiteh4t/nexfil | awk -F '/' '{print $NF}') >/dev/null 2>&1
			echo "Downloading nexfil..."
			simulate_task
			checkV

			echo "Exiting..."
			cd $githome/thewhiteh4t/nexfil
			pip install nexfil
			read -p "Please write an username " username
			echo "ejecutando script"
			nexfil -u useranme

		;;
		3)
			git clone https://github.com/laramies/theHarvester.git $githome/$(echo laramies/theHarvester | awk -F '/' '{print $NF}') > /dev/null 2>&1
			echo "Downloading theHarvester..."
            simulate_task
			checkV

            sudo apt install python3-virtualenv
			echo -e " ${green}Install python3-virtualenv${end}"
			cd $githome/laramies/theHarvester
			echo "Launch python3 installation requested"
			python3 -m pip install -r requirements/dev.txt
			echo -e " ${green}Install requirements.txt${end}"
			python3 -m pip install -r requirements/base.txt
			echo -e " ${green}Install requirements/base.txt${end}"
			python3 theHarvester.py -h
		;;
		4)
			git clone https://github.com/jaygreig86/dmitry.git $githome/$(echo jaygreig86/dmitry | awk -F '/' '{print $NF}') > /dev/null 2>&1
			echo "Downloading dmitry..."
            simulate_task
			checkV

            echo "Exiting..."
			cd $githome/jaygreig86/dmitry
			./configure
			make install
			echo -e " ${green}(V)${end}"
			read -p "Address and port: " address
			dmitry -iwnso $address
			
		;;
		5)
			git clone https://github.com/MaltegoTech/maltego-trx.git $githome/$(echo MaltegoTech/maltego-trx | awk -F '/' '{print $NF}') > /dev/null 2>&1
			echo "Downloading maltego-trx..."
            simulate_task
			checkV

			pip3 install flask==2.2.3 cryptography==39.0.1

			cd $githome/MaltegoTech/maltego-trx
			pip install maltego-trx
			if [ "$(echo $?)" == "0" ]; then
			
                echo -e " ${green}Installed${end}"

				sleep 1
				echo "Launching the tool"
				read -p "Project name: " projectName
				maltego-trx start $projectName
				sleep 1
				echo "Project created!! "
                
				read -p "Do you want to copy the starter files to your directory (S/N) " yep
				yep_f = $(echo "$yep" | tr '[:lower:]' '[:upper:]')
				if [ "$yep_f" == "S" ]; then
			
					maltego-trx init
				else
					echo -e " ${red}(X)${end}\n"
				fi
            else
				echo -e " ${red}Not installed${end}\n"
			fi
			sleep 1
			
			
		;;
		6)
			git clone https://github.com/lanmaster53/recon-ng.git $githome/$(echo lanmaster53/recon-ng | awk -F '/' '{print $NF}') > /dev/null 2>&1
			echo "Downloading recon-ng..."
            simulate_task
			checkV

			pip install pycodestyle
			cd $githome/lanmaster53/recon-ng
 			pycodestyle --show-source --show-pep8 /path/to/module.py
		;;


		7)
			echo "First of all, we need to install all the dependencies!"
			sudo apt update
			sudo apt install -y mongodb
			if [ "$(echo $?)" == "0" ]; then
				echo -e " ${green}'\xE2\x98\xA0'${end}"
			else 
				echo -e " ${red}'\xE2\x98\xA0'${end}"
			fi
			sleep 1

			sudo systemctl start mongodb
			sudo systemctl status mongodb
            sudo systemctl enable mongodb
            sudo systemctl status mongodb
			
			sudo apt-get install pdfgrep

			git clone https://github.com/Quantika14/osint-suite-tools.git $githome/$(echo Quantika14/osint-suite-tools | awk -F '/' '{print $NF}') > /dev/null 2>&1
			pip3 install -r requirements.txt
			cd $githome/Quantika14/osint-suite-tools
			echo "All are installed well!"
			while true; do

			echo "1. Buscar nick"
			echo "2. Buscar emails"
			echo "3. Buscar telefono"
			echo "4. Buscar personas"
			echo "5. Buscar fakenews"
			echo "6. Exit"
            echo "================"
			echo "================"

			read -p "Enter your choice: " choose

			case $choosse in
				1)
					python3 BuscardorNick.py
				;;
				2)
					python3 BuscardorEmails.py
				;;
				3)
					python3 BuscardorTelefonos.py
				;;
				4)
                    python3 BuscardorPersonas.py
                ;;
                5)
					python3 BuscardorNoticiasFalsas.py
                ;;
                6)

                    echo "Exiting..."
					exit 0

		;;

		6)
			git clone https://github.com/smicallef/spiderfoot.git $githome/$(echo smicallef/spiderfoot | awk -F '/' '{print $NF}') > /dev/null 2>&1
			echo "Downloading spiderfoot..."
            simulate_task
			cd $githome/smicallef/spiderfoot
			pip3 install -r requirements.txt
			echo "Write an address to connect to this tool. Ex: ==> ${green} 127.0.0.1:8080 ${end}"
			read -p "Address and port: " address
			python3 ./sf.py -l $address
		;;

		11)
			echo "Update script from github / main branch"
			actualiza_script
			simulate_task
			sleep 1
			echo "Exiting..."
		;;
		12)
			echo "Update bookmarks"
			install_firefox
			simulate_task
			sleep 1
			crear_entorno_entorno
			crear_entorno_entorno_extensiones
			extensiones_firefox
			marcadores_firefox
			echo "Existing..."
		;;
        13)
            echo "Exiting."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a valid option."
            ;;
    esac

    read -p "Press Enter to continue..."

function check() {
	if [[ "$(echo $?)" == "0" ]]; then
		echo -e "${cyan}\n[+] Acción realizada con éxito\n${end}"
	else
		echo -e "${red}\n[!] Ocurrió un error\n${end}"
		tput cnorm
		exit 1
	fi
}


# Function to draw a progress bar
draw_progress_bar() {
    local width=50
    local progress=$1
    local percentage=$((progress * 100 / width))
    printf "["
    for ((i = 0; i < width; i++)); do
        if ((i < progress)); then
            printf "="
        else
            printf " "
        fi
    done
    printf "] %d%%\r" "$percentage"
}

# Simulate a task with a progress bar
simulate_task() {
    local total_steps=50

    for ((step = 0; step < total_steps; step++)); do
        # Simulate some work here
        sleep 0.1
        draw_progress_bar "$step"
    done

    echo "Completed $var"
}

function checkV() {
	if [ "$(echo $?)" == "0" ]; then
		echo -e " ${green}(V)${end}"
	else
		echo -e " ${red}(X)${end}\n"
	fi
	sleep 1
}



function install_firefox() {
    # Debian/Ubuntu
    if command -v apt-get &> /dev/null; then
        sudo apt-get update
        sudo apt-get install firefox -y
    # Red Hat/Fedora
    elif command -v dnf &> /dev/null; then
        sudo dnf install firefox -y
    # Arch Linux
    elif command -v pacman &> /dev/null; then
        sudo pacman -S firefox --noconfirm
    else
        echo "Unsupported distribution. Please install Firefox manually."
        exit 1
    fi
}

function get_distribution() {
    if [ -f /etc/os-release ]; then
        # Use os-release file
        source /etc/os-release
        echo "$PRETTY_NAME"
    elif [ -f /etc/redhat-release ]; then
        # Red Hat-based distributions
        cat /etc/redhat-release
    elif [ -f /etc/debian_version ]; then
        # Debian-based distributions
        echo "Debian"
    else
        # Unable to determine distribution
        echo "Unknown distribution"
    fi
}

function crear_entorno_entorno() {
	# Crea el directorio ~/git, asigna $githome, y descarga los ficheros necesarios
	echo -e "${gray}*****  Configuración de Entorno Git *****${end}"
	if [ ! -d $HOME/git ]; then
		mkdir $HOME/git >/dev/null 2>&1
	fi

	if [ -d $HOME/Escritorio ]; then
		userdesktop=$HOME/Escritorio
	else
		userdesktop=$HOME/Desktop
	fi

	#Creo las distintas categorias en el escritorio
	if [ ! -d $userdesktop/Redes_Sociales ]; then
		mkdir $userdesktop/Redes_Sociales >/dev/null 2>&1
	fi
	if [ ! -d $userdesktop/Email ]; then
		mkdir $userdesktop/Email >/dev/null 2>&1
	fi
	if [ ! -d $userdesktop/Dominios ]; then
		mkdir $userdesktop/Dominios >/dev/null 2>&1
	fi
	if [ ! -d $userdesktop/General ]; then
		mkdir $userdesktop/General >/dev/null 2>&1
	fi
	if [ ! -d $userdesktop/Metadatos ]; then
		mkdir $userdesktop/Metadatos >/dev/null 2>&1
	fi

	test -f /usr/bin/git &>/dev/null

	if [ "$(echo $?)" != "0" ]; then
		echo -e "${red}\n[!] No existe 'git'. Ejecute ./ns21osint.sh -i para instalar los requisitos mínimos.\n${end}"
		tput cnorm
		exit 1
	fi

	echo -e "${cyan}Usuario:\t\t ${yel}$(whoami)"
	echo -e "${cyan}HOME:\t\t\t ${yel}$HOME"
	echo -e "${cyan}GITHOME:\t\t ${yel}$githome${nc}"
	echo -e "${cyan}Escritorio Usuario:\t ${yel}$userdesktop${nc}"
	echo -e "\n"
}



function crear_entorno_entorno_extensiones() {
	# Crea el directorio $extensionhome, y descarga los ficheros necesarios
	echo -e "${gray}*****  Configuración de Entorno de Extensiones *****${end}"
	if [ ! -d $extensionhome ]; then
		mkdir $extensionhome >/dev/null 2>&1
	fi

	echo -e "${cyan}Usuario:\t\t ${yel}$(whoami)"
	echo -e "${cyan}HOME:\t\t\t ${yel}$HOME"
	echo -e "${cyan}EXTENSIONES:\t\t ${yel}$extensionhome${nc}"
	echo -e "\n"
}

function extensiones_firefox() {
	# Opción que pide permiso para añadirlas despues
	echo -e "${gray}*****  Instalación de extensiones para Firefox  *****${end}"

	cd $HOME/extensiones

	#Declaro un diccionarios con los valores
	declare -A extensiones
	extensiones[3802468]='Wappalyzer'
	extensiones[929315]='Wyaback Machine'
	extensiones[3757144]='xlFr'
	extensiones[3752246]='Sputnik'
	extensiones[3522684]='User-Agent Switcher'
	extensiones[3815277]='Search by Image'
	extensiones[3645240]='hunter.io'
	extensiones[3816197]='Fireshot'

	RESULT=$(pgrep firefox) #Compruebo si Firefox está abierto

	if [ "${RESULT:-null}" = null ]; then

		for i in ${!extensiones[@]}; do
			echo -ne "\n${yellow}[*]${endC}${blue} Extensión ${end}${purple}${extensiones[$i]}${end}${blue}...${end}"
			wget "https://addons.mozilla.org/firefox/downloads/file/$i/addon-$i-latest.xpi" >/dev/null 2>&1
			checkV
		done

		firefox *.xpi && rm *.xpi &

		echo -e "\n\n${cyan}\n[+] Extensiones instaladas con éxito\n${end}"
	else
		echo -e "${red}\n[!] Ocurrió un error: Firefox se está ejecutando.\n${end}"
	fi
}

function marcadores_firefox() {
	# Utilizo sqlite3 para la restauración de los marcadores desde dump
	echo -e "${yellow}[*]${end}${gray}*****  Instalación de marcadores para Firefox  *****${end}"

	#Existe el perfil del usuario
	if test -f ~/.mozilla/firefox/*default-release/places.sqlite; then

		RESULT=$(pgrep firefox) #Compruebo si Firefox está abierto

		if [ "${RESULT:-null}" = null ]; then
			if test -f marcadores.sql; then

				test -f /usr/bin/sqlite3 &>/dev/null

				if [ "$(echo $?)" != "0" ]; then
					echo -e "${red}\n[!] No existe 'sqlite3'. Ejecute ./ns21osint.sh -i para instalar los requisitos mínimos.\n${end}"
					tput cnorm
					exit 1
				fi

				sqlite3 ~/.mozilla/firefox/*default-release/places.sqlite <marcadores.sql >/dev/null 2>&1

				echo -e "\n${cyan}\n[+] Marcadores instalados con éxito\n${end}"
			else
				echo -e "${red}\n[!] Ocurrió un error: El fichero de marcadores no existe.\n${end}"
			fi
		else
			echo -e "${red}\n[!] Ocurrió un error: Firefox se está ejecutando.\n${end}"
		fi
	else
		echo -e "${red}\n[!] Ocurrió un error: Debe ejecutar Firefox una vez para que se cree su perfil de usuario.\n${end}"
	fi
}

function actualiza_script() {
	echo -e "${yellow}[*]${end}${gray}*****  Actualización de script  *****${end}"

	if [ "$(echo $?)" != "0" ]; then
		echo -e "${red}\n[!] No existe 'git'. Ejecute ./ns21osint.sh -i para instalar los requisitos mínimos.\n${end}"
		tput cnorm
		exit 1
	fi

	git clone https://github.com/12Sanchez/miprimerproyecto.git $githome/miprimerproyecto >/dev/null 2>&1
	cp $githome/miprimerproyecto/* .
	echo -e "\n${cyan}\n[+] Script actualizado a la última versión disponible con éxito\n${end}"
}