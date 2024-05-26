#!/usr/bin/bash

for ((i=0;i<=2;i++)){
echo "No of users: "
read users

if [ $users -eq 1 ]
then

echo "Enter Username:"
read Username

echo "Enter Password:"
read Password

sudo useradd -m -s /usr/bin/bash $Username
echo "$Username:Password" | sudo chpasswd

else
break
fi
}
