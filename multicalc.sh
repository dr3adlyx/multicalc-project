# VERSION 1

#!/bin/bash

# Farben und Formatierungen.


RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
NC='\033[0m' # Keine Farbe

BOLD='\033[1m'
ITALIC='\033[3m'
UNDERLINE='\033[4m'
STRIKETHROUGH='\033[9m'


echo "║ Wie viele Zahlen möchtest ║ "
echo "║ du zusammenrechnen?       ║"
echo "╚═══════════════════════════╝"
echo " ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀ "
# echo "Wie viele Zahlen möchtest du zusammenrechnen?"
read CNT
if ! [[ "$CNT" = "ETEST" ]]
	then
		if ! [[ "$CNT" =~ ^[0-9]+$ ]]; then
		  echo -e "⚠️ Bitte gib eine positive Zahl ein. [${BOLD}${RED}ERR${NC}_69737883]"
		  exit 1
		fi
	else
# 		echo -e "⚠️ Ungültige Eingabe. Bitte gib eine Zahl ein. [${BOLD}${RED}ERR${NC}_90876973]"
# 		echo -e "⚠️ Ungültiger Operator. [${BOLD}${RED}ERR${NC}_68826973]"
#		echo -e "⚠️ Bitte gib eine positive Zahl ein. [${BOLD}${RED}ERR${NC}_69737883]"
fi
clear		

RES=0

for (( i=1; i<=$CNT; i++ ))
do
echo "║ Gebe nun Zahl Nr. $i ein. ║ "
echo "║                           ║"
echo "╚═══════════════════════════╝"
echo " ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀ "
    read NUM
clear
    if ! [[ "$NUM" =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]]; then
      echo -e "⚠️ Ungültige Eingabe. Bitte gib eine Zahl ein. [${BOLD}${RED}ERR${NC}_90876973]"
      exit 1
    fi

    if [ "$i" -eq 1 ]; then
        RES=$NUM
    else
echo "║ Welche Rechenart? ║ "
echo "║   + | - | * | /   ║  "
echo "╚═══════════════════╝"
echo " ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀ "
        read operator

        case $operator in
            "+")
                RES=$((RES + NUM))
                ;;
            "-")
                RES=$((RES - NUM))
                ;;
            "*")
                RES=$((RES * NUM))
                ;;
            "/")
                RES=$((RES / NUM))
                ;;
            *)
                echo -e "⚠️ Ungültiger Operator. [${BOLD}${RED}ERR${NC}_68826973]"
                exit 1
                ;;
        esac
    fi
done

echo "Ergebnis: $RES"
