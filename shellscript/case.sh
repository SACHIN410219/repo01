#!/bin/bash
echo "enter the option for which script u need"

read option

case $option in
	1) bash addition.sh 
		;;

	2) bash desc.sh
		;;

	3) bash diskcheck.sh
		;;
esac
