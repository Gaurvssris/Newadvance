variable "rg1" {
  type = map(object({
    name     = string
    location = string
  }))
}
variable "acr1" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    sku                 = string
    admin_enabled       = bool
  }))
}
variable "aks" {
  description = "AKS Configuration"

  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    kubernetes_version  = string
    node_pool_name      = string
    node_count          = number
    vm_size             = string
  }))
}
# variable "storageact" {}
# variable "vnet1" {}
# variable "subnet1" {}
# variable "publicip1" {}
# variable "nic1" {}
# variable "vm1" {}