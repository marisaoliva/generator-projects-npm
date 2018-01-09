
#!/bin/bash
clear
echo "Nombre de tu proyecto"
read nombre
echo ""
echo " \e[0m Escoja una opcion "
echo "1. React "
echo "2. Angular "
echo "3. Vue "
echo "4. Proyecto sin framework"
echo "5. Salir "
echo -n "Seleccione una opcion [1 - 5]"
read opcion
case $opcion in
1) echo "Instalando create-react-appy un proyecto de ejemplo con React \e[34mBlue";
npm install -g create-react-app
create-react-app $nombre;;
2) echo "Instalando angular-cli y un proyecto de ejemplo con Angular \e[34mBlue";
npm install -g @angular/cli
ng new $nombre;;
3) echo "Instalando vue-cli y un proyecto de ejemplo con Vue \e[34mBlue";
npm install -g vue-cli
vue init webpack $nombre;;
4) echo "npm init \e[34mBlue";
npm init;;
5) echo "bye \e[34mBlue";
exit 1;;
*) echo "$opc no es una opcion válida. \e[34mBlue";
read foo;;
esac
done
