variable "aks" {
      type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    kubernetes_version  = string
    vm_size             = string
    node_count          = number
  }))
}
