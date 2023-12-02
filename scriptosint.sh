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

 clear
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
    echo "2. Exit"
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

				if [ "$(echo $?)" == "0" ]; then
					echo -e " ${green}(V)${end}"
				else
					echo -e " ${red}(X)${end}\n"
				fi
				sleep 1
			done
		;;
        1)
            if check_tool "tool1"; then
                echo "Tool 1 is installed."
            else
                read -p "Tool 1 is not installed. Do you want to download it? (y/n): " download_choice
               
                    git clone https://github.com/Datalux/Osintgram.git $githome/$(echo Datalux/Osintgram | awk -F '/' '{print $NF}') >/dev/null 2>&1
                    echo "Downloading Tool 1..."
					if [ "$(echo $?)" == "0" ]; then
						echo -e " ${green}(V)${end}"
					else
						echo -e " ${red}(X)${end}\n"
					fi
					sleep 1
            
                    echo "Exiting."
					cd /home/javi/git/Osintgram
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
			if [ "$(echo $?)" == "0" ]; then
				echo -e " ${green}(V)${end}"
			else
				echo -e " ${red}(X)${end}\n"
			fi
			sleep 1

			echo "Exiting..."
			cd /home/javi/git/thewhiteh4t/nexfil
			pip install nexfil
			read -p "Please write an username " username
			echo "ejecutando script"
			nexfil -u useranme

		;;

		3)
			git clone https://github.com/lanmaster53/recon-ng.git $githome/$(echo lanmaster53/recon-ng | awk -F '/' '{print $NF}') > /dev/null 2>&1
			echo "Downloading recon-ng..."
            simulate_task
			if [ "$(echo $?)" == "0" ]; then
				echo -e " ${green}(V)${end}"
			else
				echo -e " ${red}(X)${end}\n"
			fi
			sleep 1

			pip install pycodestyle
			cd /home/javi/git/lanmaster53/recon-ng
 			pycodestyle --show-source --show-pep8 /path/to/module.py
		;;
        10)
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

function press_key() {
	echo -e "\n${red}[.] Presiona la tecla Enter para continuar...${end}" && read
}

function instalator(){
	echo -ne "\n${yellow}[*]${endC}${blue} Herramienta${end}${purple} $1${end}${blue}...${end}"
	echo -e "\n${yellowColour}[i]${endColour}${grayColour} Instalando...${endColour}"
	sleep 1
	## Comprobamos si estamos en ArchLinux (sin Pacman que necesita permisos de superusuario)
	if [ -n "$(which yay)" ]; then
		yay -S $1 >/dev/null 2>&1
	elif [ -n "$(which yaourt)" ]; then
		yaourt -S $1 >/dev/null 2>&1
	# Derivados de devian
	elif [ -n "$(which apt)" ]; then
		sudo apt-get install -y $1 >/dev/null 2>&1
	fi
	echo -e "\n${greenColour}[V]${endColour}${grayColour} $1${endColour}${yellowColour} instalado${endColour}\n"
	sleep 2
}
function dependencies() {
	tput civis
	counter=0
	dependencies_array=(git python3 python3-venv python3-pip libreadline-dev mongodb pdfgrep default-jre sqlite3 firefox)

	# Actualización del sistema

	if [ -n "$(which yay)" ]; then
		echo -e "${yellow}[*]${end}${gray} Actualizando las fuentes de los programas (yay -Syyu)...${end}\n"
		yay -Syyu > /dev/null 2>&1
	elif [ -n "$(which yaourt)" ]; then
		echo -e "${yellow}[*]${end}${gray} Actualizando las fuentes de los programas (yaurt -Syyu)...${end}\n"
		yaourt -Syyu > /dev/null 2>&1
	# Derivados de devian
	elif [ -n "$(which apt)" ]; then
		echo -e "${yellow}[*]${end}${gray} Actualizando las fuentes de los programas (apt update)...${end}\n"
		sudo apt update > /dev/null 2>&1
		
	else
		echo "Instale manualmente la dependencias necesarias antes de continuar, gracias"
		for program in "${dependencies_array[@]}"; do
			echo $program
		done
		tput cnorm
		exit 1
	fi

	for program in "${dependencies_array[@]}"; do
		if [ ! "$(command -v $program)" ]; then
			instalator $program
			let counter+=1
		fi
	done
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

	git clone https://github.com/miguelns21/ns21Osint $githome/ns21osint >/dev/null 2>&1
	cp $githome/ns21osint/* .
	echo -e "\n${cyan}\n[+] Script actualizado a la última versión disponible con éxito\n${end}"
}

# Main Function
if [ "$(id -u)" == "0" ]; then #Comprobamos si somos usuario root
	clear
	banner
	echo
	echo -e "\n${red}[*] Este script instalará herramientas en el perfil de usuario actual.${end}\n"
	echo -e "${red}[*] Por favor, logeese como un usuario NO root para la correcta instalación.${end}\n"
	echo -e "${red}[*] El script le solicitará la clave root cuando sea necesario.${end}\n"
	exit 1
fi

if [[ $1 == "-h" ]] || [[ $1 == "" ]]; then
	clear
	banner
	echo
	helpPanel
elif [[ $1 == "-a" ]]; then
	clear
	banner
	echo
	if [ "$(id -u)" != "0" ]; then #Comprobamos si somos usuario root
		echo -e "\n${red}[*] Para la correcta instalación de las herramientas, es necesario ser root${end}\n"
		dependencies #Esta opción requiere ser root
		echo -e "\n${purple}[*] Sistema comprobado. Ahora puede ejecutar el script: ./ns21osing.sh -i${end}"
		tput cnorm
	fi

elif [[ $1 == "-i" ]]; then
	clear
	banner
	echo
	crear_entorno_entorno
	# Por motivos de depuración borraremos el directorio git antes de instalar.
	rm -rf $githome
	clonando_repos
	Osintgram
	nexfil
	theHarvester
	dmitry
	maltego
	recon-ng
	dante-osint-suite-tools
	osrframework
	spiderfoot
	exiftool
	echo -e "\n${purple}[*] Herramientas instaladas con éxito.${end}"
	tput cnorm
elif [[ $1 == "-e" ]]; then #Instalación de las Extensiones de firefox
	clear
	banner
	echo
	crear_entorno_entorno_extensiones
	tput civis
	extensiones_firefox
	tput cnorm
elif [[ $1 == "-m" ]]; then #Instalación de los Marcadores de firefox
	clear
	banner
	echo
	tput civis
	marcadores_firefox
	tput cnorm
elif [[ $1 == "-u" ]]; then #Actualización del script y del fichero de marcadores a través de github
	clear
	banner
	echo
	tput civis
	actualiza_script
	tput cnorm
else #Se ha introducido un parámetro desconocido o no soportado
	clear
	banner
	echo
	helpPanel
fi

if [ ! -n "$1" ]; then helpPanel; fi