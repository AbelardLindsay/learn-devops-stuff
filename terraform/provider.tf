# The configuration for the `remote` backend.
terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "AbelardLindsay"
    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "learning-devops-stuff"
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
