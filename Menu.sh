#!/bin/bash
EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'

pause(){
  read -p "Presiona la tecla [Enter] para continuar..." fackEnterKey
  }
  #Hola mundo
  holaMundo(){
      /bin/bash /home/alumno/scripts/holamundo.sh
      pause
  }
 Script2(){
      /bin/bash /home/alumno/scripts/definirvariable.sh
      pause
 }
 Script3(){
      /bin/bash /home/alumno/scripts/Uso_de_Variables.sh
      pause
 }
  Script4(){
      /bin/bash /home/alumno/scripts/Arrays.sh
      pause
 }
  Script5(){
      /bin/bash /home/alumno/scripts/Variables_y_Arrays.sh
      pause
 }
  Script6(){
      /bin/bash /home/alumno/scripts/Operaciones_Aritmeticas.sh
      pause
 }
  Script7(){
      /bin/bash /home/alumno/scripts/Operaciones_Logicas.sh
      pause
 }
  Script8(){
      /bin/bash /home/alumno/scripts/Condicionales_if_y_test.sh
      pause
 }
  Script9(){
      /bin/bash /home/alumno/scripts/Comprobacion_Fichero.sh
      pause
 }
  Script10(){
      /bin/bash /home/alumno/scripts/Estructura_case.sh
      pause
 }
  Script11(){
      /bin/bash /home/alumno/scripts/Iteraciones_for.sh
      pause
 }
  Script12(){
      /bin/bash /home/alumno/scripts/Iteración_while.sh
      pause
 }
  Script13(){
      /bin/bash /home/alumno/scripts/Bucle_until.sh
      pause
 }
  Script14(){
        /bin/bash /home/alumno/scripts/Estructura_select.sh
        pause
 }
  Script15(){
        /bin/bash /home/alumno/scripts/Funciones.sh
        pause
 }
  Script16(){
        /bin/bash /home/alumno/scripts/Libreria.sh
        pause
 }
  Script17(){
        /bin/bash /home/alumno/scripts/Sueño.sh
        pause
 }
  Script18(){
        /bin/bash /home/alumno/scripts/Colores.sh
        pause
 }
Labs(){
        /bin/bash /home/alumno/scripts/Labs.sh
        pause
}
Labs2(){
        /bin/bash /home/alumno/scripts/Labs2.sh
        pause
}
Labs3(){
        /bin/bash /home/alumno/scripts/Labs3.sh
        pause
}
Labs4(){
        /bin/bash /home/alumno/scripts/Labs4.sh
        pause
}
Labs5(){
        /bin/bash /home/alumno/scripts/Labs5.sh
        pause
}


show_menus() {
      clear
        echo "         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        echo "           ___  ___                  ______     _            _             _ "
        echo "           |  \/  |                  | ___ \   (_)          (_)           | |"
        echo "           | .  . | ___ _ __  _   _  | |_/ / __ _ _ __   ___ _ _ __   __ _| |"
        echo "           | |\/| |/ _ \ ._ \| | | | |  __/ .__| | ._ \ / __| | ._ \ / _' | |"
        echo "           | |  | |  __/ | | | |_| | | |  | |  | | | | | (__| | |_) | (_| | |"
        echo "           \_|  |_/\___|_| |_|\__._| \_|  |_|  |_|_| |_|\___|_| .__/ \__._|_|"
        echo "                                                              | |            "
        echo "                                                              |_|            "
        echo "          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        echo -e "Bienvenido al menú, por favor, escribe el número del script deseado a correr y presione enter\n"
        echo "1. Hola Mundo                 7. Operaciones Lógicas                   13. Bucle Until       "
        echo "2. Definir Variable           8. Condicionales if y test               14. Estructura Select"
        echo "3. Uso de Variables           9. Comprobar si el ficheco existe        15. Funciones"
        echo "4. Arrays                     10. Estructura case                      16. Simular importación de libreria"
        echo "5. Variables y Arrays         11. Iteración for                        17. Señales"
        echo "6. Operaciones Aritméticas    12. Iteración while                      18. Muestra de colores"
        echo -e "    19. Lab 1.    20. Lab 2.    21. Lab 3.    22. Lab 4.   23. Lab 5.    24. Exit\n"
      }
read_options(){
    local choice
    read -p "Escoge entre las opciones [ 1 - 24 ]" choice
    case $choice in
        1) holaMundo;;
        2) Script2;;
        3) Script3;;
        4) Script4;;
        5) Script5;;
        6) Script6;;
        7) Script7;;
        8) Script8;;
        9) Script9;;
        10) Script10;;
        11) Script11;;
        12) Script12;;
        13) Script13;;
        14) Script14;;
        15) Script15;;
        16) Script16;;
        17) Script17;;
        18) Script18;;
        19) Labs;;
        20) Labs2;;
        21) Labs3;;
        22) Labs4;;
        23) Labs5;;
        24) exit 0;;
       *) echo -e "${RED}Error...${STD}" && sleep 2
       esac
}

while true
do
  show_menus
  read_options
done
