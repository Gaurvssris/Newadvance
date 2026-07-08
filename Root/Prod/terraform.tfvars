rg1 = {
    resource_group ={ 
        name     = "rg_prod"
        location = "Centralindia"
       }
       }
acr1 = {
acr01 = {
name                = "acrprod9838"
resource_group_name = "rg_prod"
location            = "Centralindia"
sku                 = "Basic"
admin_enabled       = true
}
}       

aks1 = {
aks01 = {
name = "aks-prod"
resource_group_name = "rg_prod"
location = "Centralindia"
dns_prefix = "aksprod"
node_pool_name = "nodepool1"
node_count = 2
vm_size = "Standard_B2s"
}
}

storageact = {
    storage01 = {
        name = "strgprod9838"
        resource_group_name = "rg_prod"
        location = "Centralindia"
    }
}
vnet1 = {
    vnet01 = {
        name                = "vnet-prod"
        resource_group_name = "rg_prod"
        location            = "Centralindia"
    }
}
subnet1 = {
    subnet01 = {
        name                 = "subnet-prod"
        resource_group_name  = "rg_prod"
        virtual_network_name = "vnet-prod"
        address_prefixes     = "10.0.1.0/24"
    }
    subnet02 = {
        name                 = "subnet-prod2"
        resource_group_name  = "rg_prod"
        virtual_network_name = "vnet-prod"
        address_prefixes     = "10.0.2.0/24"
    }
}
publicip1 = {
    publicip01 = {
        name                = "publicip-prod"
        resource_group_name = "rg_prod"
        location            = "Centralindia"
        allocation_method   = "Static"
        sku                 = "Standard"
    }
}
nic1 = {
  vm01 = {
    name                 = "nic-prod"
    resource_group_name  = "rg_prod"
    location             = "Centralindia"
        subnet_id           = "/subscriptions/84dd7c9c-ad3c-4682-abd1-5403bd6ffa0d/resourceGroups/rg_prod/providers/Microsoft.Network/virtualNetworks/vnet-prod/subnets/subnet-prod"
        public_ip_address_id = "/subscriptions/84dd7c9c-ad3c-4682-abd1-5403bd6ffa0d/resourceGroups/rg_prod/providers/Microsoft.Network/publicIPAddresses/publicip-prod"
    }
}
vm1 = {
    vm01 = {
        name                = "vm-prod"
        resource_group_name = "rg_prod"
        location            = "Centralindia"
        network_interface_ids = ["/subscriptions/84dd7c9c-ad3c-4682-abd1-5403bd6ffa0d/rg_prod/providers/Microsoft.Network/networkInterfaces/nic-prod"]
        vm_size             = "Standard_B2s"
        admin_username      = "azureuser"
        admin_password      = "P@ssw0rd1234!"
    }
}