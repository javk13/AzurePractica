# Configuracion del provider Azure 
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.10.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

#Creación del grupo de recursos
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location_name
}