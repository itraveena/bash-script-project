## A script that deletes all the files and directories in a directory except for the specified ones.

#!/bin/bash
echo "Enter the directory path: "
read DIR_PATH

echo "Enter files or directories to keep: "
read -a KEEP_FILES

for file in $DIR_PATH/*; do
    if [[ ! " ${KEEP_FILES[@]} " =~ " ${file##*/} " ]]; then
        if [ -d "$file" ]; then
            rm -r "$file"
        else
            rm "$file"
        fi
    fi
done
