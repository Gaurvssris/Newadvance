variable "acr" {
      type = map(object({
    name                = string
    sku                 = string
    admin_enabled       = bool
    resource_group_name = string
    location            = string
  }))
}
