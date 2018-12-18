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
rgExists="A"$(az group exists --name $resourceGroupName)
echo "$rgExists"

if [ $rgExists = "Afalse" ]; then
	echo "Creating group "$resourceGroupName;
	az group create --name $resourceGroupName --location $location;
else
	echo "Group "$resourceGroupName " exists";
fi