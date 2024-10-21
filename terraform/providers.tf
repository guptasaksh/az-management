terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0, < 4.0.0"
       }
  }
  } 
  provider "azurerm"{
  features {}
    subscription_id = "466a5d71-de9f-417a-b567-a3ed2033b6d6"
 
  # backend "azurerm" {
  #   use_azuread_auth = true
  #   use_oidc         = true
  # }
}

