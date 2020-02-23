# main module to deploy network and webVM

provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version = "=1.44.0"

  subscription_id = "c485bb24-9cf2-4432-a70f-51759e2679e0"
}

module "network" {
	source = "./modules/network"
  location = var.location
  rg_name  = var.rg_name
}

#module "WebVM" {
#	source = "./modules/compute"

#  rg_name  = var.rg_name
#  location = var.location
#  nic_id = module.network.nicID
#}
