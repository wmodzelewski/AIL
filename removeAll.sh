#!/bin/bash

#groups=$(az group list --query '[].name' --output tsv | sed ':a;N;$!ba;s/\n/ /g')
groups=$(az group list --query '[].name' --output tsv )

for name in $groups
do
	echo "Removing group "$name
	az group delete --name $name --yes
done