#!/bin/bash
while true
do
	echo "1. Create a file"
	echo "2. Change file permission"
	echo "3. Add content to file"
	echo "4. Copy file to another loaction"
	echo "5. Delete file"
	echo "6. Exit menu"
	read -p "Enter your choice: " choice

	case $choice in
	1)
	read -p "Enter file name :" file_name
	touch $file_name
	echo "$file_name is created"
	;;
	
	2)
	read -p "Enter file name:" file_name
	read -p "Enter file permission (0 = No Permission,1 = Execute,2 = Write,
	4 = Read):" permission
	chmod $permission $file_name
	echo "Permissions changed for $file_name changed to $permission"
	;;

	3)
	read -p "Enter file name :" file_name
	read -p "Enter content :" content
	echo $content >> $file_name
	echo "$content is added to the $file_name"
	;;

	4)
	read -p "Enter file name :" file_name
	read -p "Enter the destination :" destination
	cp $file_name $destination
	echo "$file_name is added to the $destination"
	;;

	5)
	read -p "Enter file name to be deleted :" file_name
	rm -rf $file_name
	echo "$file_name is deleted"
	;;

	6)
	read -p "You are exiting the menu "  
	exit 0
	echo "Thank You!!"
	;;

	*)
	read -p "Invalid choice"
	;;

	esac
done
