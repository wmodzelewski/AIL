#!/bin/bash
resourceGroupName="testResourceGroup103	"
location="northeurope"

rgExists=$(az group exists --name $resourceGroupName)

if [ $rgExists = false ]; then
	echo "Creating group "$resourceGroupName
	az group create --name $resourceGroupName --location $location
else
	echo "Group "$resourceGroupName " exists"
fi