##Write a script that can create, delete, copy and move files and directories. The script should accept user input to perform the desired file management operation.

#!/bin/bash
echo "1. create"
echo "2. delete"
echo "3. copy"
echo "4. move"
echo "Enter choice:"
read choice
case $choice in
    1) echo "enter filename to create:" ; read filename ; touch $filename;;
    2) echo "enter filename to delete:" ; read filename ; rm -f $filename;;
    3) echo "enter filename to copy:" ; read filename ; cp src dest; $src $dest;;
    4) echo "enter filename to move:" ; read filename ; mv src dest; $src $dest;;
    *) echo "Invalid choice";;
esac    

