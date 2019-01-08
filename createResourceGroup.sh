#!/bin/bash

if [ -z "$1" ]; then
	resourceGroupName="testResourceGroup104"
else	
	resourceGroupName="$1"
fi

if [ -z "$2" ]; then
	location="northeurope"
else	
	location="$2"
fi

echo "Processing group "$resourceGroupName" in location "$location
rgExists=$(az group exists --name $resourceGroupName)
echo "$rgExists"

if [ "$rgExists" = "false" ]; then
	echo "Creating group "$resourceGroupName;
	az group create --name $resourceGroupName --location $location;
else
	echo "Group "$resourceGroupName " exists";
fi


#az vm create --resource-group RG_AIL_CH1 --name ailVmUbuntu1 --image UbuntuLTS --size Standard_B1s --ssh-key-value @~/.ssh/id_rsa.pub
#az vm open-port -g RG_AIL_CH1 --name ailVmUbuntu1 --port 80