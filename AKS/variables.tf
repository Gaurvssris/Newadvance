variable "aks" {
  description = "AKS Configuration"

  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    node_pool_name      = string
    node_count          = number
    vm_size             = string
  }))
}
