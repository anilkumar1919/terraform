provider "azurerm" {
 features {}
 subscription_id ="2062f2a0-87f8-4163-a975-012af2b0dd34"
}

terraform {
  required_providers {
   azurerm = {
        source  = "hashicorp/azurerm"
        #version = "~>2.99"
        version = "~>3.0.1"

        }

  }
  backend "azurerm" {
    resource_group_name  = "devopsrg"
    storage_account_name = "mydevops"
    container_name       = "devopsblob"
    key                  = "devops.tf"
  }
}