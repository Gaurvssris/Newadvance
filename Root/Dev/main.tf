module "resourcegroup"{
source= "../../Rg"
rg =var.rg1
}

module "acr" {
source = "../../Acr"
acr = var.acr1
}

module "aks" {
source = "../../AKS"
aks = var.aks1
depends_on = [module.resourcegroup,module.acr]
}

module "storage" {
source = "../../Storage"
storage_accounts = var.storageact
depends_on = [ module.resourcegroup ]
}
module "vnet" {
        source = "../../VNET"
        vnet = var.vnet1
        depends_on = [module.resourcegroup]    
}
module "subnet" {
        source = "../../SUBNET"
        subnet = var.subnet1
        depends_on = [module.vnet]
}
module "publicip" {
  source = "../../PUBLICIP"
  publicip = var.publicip1
  depends_on = [module.resourcegroup]
}
module "nic" {
  source = "../../NIC"
   nic = var.nic1
  depends_on = [
    module.subnet,
    module.publicip
  ]
}
module "vm" {
source = "../../VM"
vm      = var.vm1
nic_ids = module.nic.nic_ids
depends_on = [module.nic]
}