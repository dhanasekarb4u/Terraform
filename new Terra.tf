terraform {
  required_providers {
    azure = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
features {}
subscription_id = subscription_id
}

resource "azurerm_resource_group" "RdsGroup" {
  name = "CTP_Azure_Migrate1"
  location = var.location  
  tags     = {
    CostCenter     = var.rg_tags["costcenter"]
    DeploymentType = var.rg_tags["deploymenttype"]
    LifeCycle      = var.rg_tags["lifecycle"]
    Product        = var.rg_tags["product"]

}
}
