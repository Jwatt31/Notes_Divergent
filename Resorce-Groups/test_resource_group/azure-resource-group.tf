

terraform {
    required_version = ">= 1.0.0"
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = ">=2.0"
      }
    }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "my_demo_rg_2024class3" {
    location = "centralus"
    name = "my_demo_rg_2024class3" 
}





