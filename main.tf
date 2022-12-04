terraform {
 required_providers {
  azurerm = {
    source = "hashicorp/azurerm"
    version = "~> 3.0.2"
  }
} 

}

provider "azurerm" {
       
        features {}
        
        subscription_id=var.SubID
        tenant_id = var.TenantId
        client_id = var.ClientId
        client_secret = var.Secret
}


resource "azurerm_resource_group" "RgTerraCloud" {
 name = var.RGName
 location = var.Location
}