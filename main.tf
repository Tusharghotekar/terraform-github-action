terraform {
required_providers {
azurerm = {
source= "hashicorp/azurerm"
version = "=2.46.0"
}}

backend "azurerm"{
recource_group_name = "friday-demo-rg"
storage_account_name = "sttfstatemgt01"
container_name = "tfstate"
key = "demo.terraform.tfstate"
}
}

# configure to microsoft azure provider

provider "azurerm" {
features {}


}

# create a resource group

recource "azurerm_resource_group" "rg" {
name = "demo-rg"
location = "west europe"
}

