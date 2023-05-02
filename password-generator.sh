#!/bin/bash
echo "Enter username: "
echo "Enter password length: "
read length
echo "Enter characters to include: "
read username
echo "useradd -m $username"
read chars
echo $(openssl rand -base64 48 | tr -dc $chars | head -c $length)

