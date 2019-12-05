        printf $palabra > Ahorcadocopiapalabra

        wc -c Ahorcadocopiapalabra > Ahorcadocopiacont

        #Contabiliza las letras

        let contadorpal=$(cut -d " " -f 1 Ahorcadocopiacont)

        #Imprime el num de guiones por letra y guarda la palabra separada por letras
        #aunado al arreglo "vacio" lleno de puntos

        for(( i=0; i<$contadorpal; i++ ))
        do
                let j=$i+1
                printf "_ "
                arrpalabra[$i]=$(cut -c $j Ahorcadocopiapalabra)
                arrpalabrafin[$i]="."
        done
        printf "\n\n"

        let win=0
        let contwin=0

        for(( mov=0; mov<=7; mov++ ))
        do
                if [ $mov -eq 7 ]; then
                        printf "_________     ${nivel}/55\n"
                        printf "        |\n"
                        printf "        O\n"
                        printf "        |\n"
                        printf "     ---"
                        printf " ---\n"
                        printf "        |\n"
                        printf "       /"
                        echo " \\"
                        printf "\n\n GAME OVER \n\n"
                        echo "El comando era: $palabra"
                        let finjuego=1
                        break
                fi
                let bandera=0
                hombre ${mov} ${nivel}
                read letra
                #Comparo si se encuentra la letra en la palabra
                for(( i=0; i<$contadorpal; i++ ))
                do
                        if [ $letra == "${arrpalabra[$i]}" ];
                                then
                                #Si es, lleno el arreglo de palabrafin donde si haya
                                arrpalabrafin[$i]="${arrpalabra[$i]}"
                                printf "${arrpalabra[$i]} "
                                #Variable bandera por si se contesta bien no quite vidas
                                let bandera=1
                                #Comparo si arreglo palabrafin esta ocupado, si es asi, imprime lo que hay
                        elif [ "${arrpalabrafin[$i]}" != "." ];
                                then
                                printf "${arrpalabrafin[$i]} "
                        else
                        #Si no coincide, va guion
                                printf "_ "
                        fi
                done
                #Se refleja la bandera y no quita vida
                if [ $bandera -eq 1 ]; then
                        let mov=$mov-1
                fi
                printf "\n\n"
                for(( win=0; win<$contadorpal; win++ ))
                do
                        if [[ "${arrpalabra[$win]}" == "${arrpalabrafin[$win]}" ]]; then
                                let contwin=$contwin+1
                        fi
                        if [[ $contwin -eq $contadorpal ]]; then
                                printf "FELICIDADES!\n"
                                sleep 2
                                clear
                                let banderawin=1
                                let mov=0
                        fi
                done

                let contwin=0
                if [[ $banderawin -eq 1 ]]; then
                        let banderawin=0
                        break
                elif [[ $mov -eq 7 ]]; then
                        break
                fi
        done

        if [[ $finjuego -eq 1 ]]; then
                break
        else
                printf "Deseas Continuar?\nPresiona Q para salir\n"
                printf "Cualquier otra tecla para continuar\n\n"
                read Dec
                if [[ "${Dec}" == "Q" || "${Dec}" == "q" ]];then
                        clear
                        printf "Gracias por jugar\n\n"
                        break
                else
                        clear
                        #Se elimina la palabra de la copia creada
                        sed -i "/${palabra}/d" ./Ahorcadocopia
                        let nivel=$nivel+1
                fi
        fi
done

#Se elimina basura

rm Ahorcadocopia*
