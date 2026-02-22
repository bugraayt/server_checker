#!/bin/bash
logfile="server_status.log"

while true;
do
	read -e -p "Enter servers hostname/IP or a websites seperated by space: " servers
	echo "You typed: $servers"
	for server in $servers;
	do
		echo "Checking $server"
		if ping -q -c 1 -w 3 $server > /dev/null; then
			echo -e "$(date): $server is UP." | tee -a server_status.log
            echo -e "\e[32m$(date): $server is UP.\e[0m"
		else
			echo -e "$(date): $server is currently DOWN." | tee -a server_status.log
            echo -e "\e[31m$(date): $server is currently DOWN.\e[0m"
		fi
	done

	read -p "Check again? (y/n)" check
		if [ "$check" = "n" ]; then
			echo "Quitting..."
			sleep 1
			break
		fi
done