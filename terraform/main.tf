# The configuration for the `remote` backend.
terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "AbelardLindsay"
    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "learn-devops-stuff"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.18.0"
    }
  }
}


provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "TestResourceGroup"
  location = "eu-west"
}

