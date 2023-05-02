#!/bin/bash

read -p "Enter the username: " username

useradd -m -s /bin/bash $username

passwd $username

echo "User account created for $username."

