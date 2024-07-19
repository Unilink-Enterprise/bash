#!/bin/bash
echo "Enter your github email:"
read email
echo -e "\nEnter Name of keys file:"
read filename
ssh-keygen -o -t rsa -C $email -f $filename
mv $filename ~/.ssh/
mv "${filename}.pub" ~/.ssh/
chmod 400 ~/.ssh/$filename
cat ~/.ssh/"${filename}.pub"
