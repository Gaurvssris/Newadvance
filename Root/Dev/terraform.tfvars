rg1 = {
    resource_group ={ 
        name     = "rg_dev"
        location = "East US"
       }
       }
acr1 = {
acr01 = {
name                = "acrdev9838"
resource_group_name = "rg_dev"
location            = "East US"
sku                 = "Basic"
admin_enabled       = true
}
}       

aks1 = {
aks01 = {
name = "aks-dev"
resource_group_name = "rg_dev"
location = "East US"
dns_prefix = "aksdev"
node_pool_name = "nodepool1"
node_count = 2
vm_size = "Standard_B2s"
}
}

storageact = {
    storage01 = {
        name = "strgdev9838"
        resource_group_name = "rg_dev"
        location = "East US"
    }
}
vnet1 = {
    vnet01 = {
        name                = "vnet-dev"
        resource_group_name = "rg_dev"
        location            = "East US"
    }
}
subnet1 = {
    subnet01 = {
        name                 = "subnet-dev"
        resource_group_name  = "rg_dev"
        virtual_network_name = "vnet-dev"
        address_prefixes     = "10.0.1.0/24"
    }
    subnet02 = {
        name                 = "subnet-dev2"
        resource_group_name  = "rg_dev"
        virtual_network_name = "vnet-dev"
        address_prefixes     = "10.0.2.0/24"
    }
}
publicip1 = {
    publicip01 = {
        name                = "publicip-dev"
        resource_group_name = "rg_dev"
        location            = "East US"
        allocation_method   = "Static"
        sku                 = "Standard"
    }
}
nic1 = {
  vm01 = {
    name                 = "nic-dev"
    resource_group_name  = "rg_dev"
    location             = "East US"
        subnet_id           = "/subscriptions/84dd7c9c-ad3c-4682-abd1-5403bd6ffa0d/resourceGroups/rg_dev/providers/Microsoft.Network/virtualNetworks/vnet-dev/subnets/subnet-dev"
        public_ip_address_id = "/subscriptions/84dd7c9c-ad3c-4682-abd1-5403bd6ffa0d/resourceGroups/rg_dev/providers/Microsoft.Network/publicIPAddresses/publicip-dev"
    }
}
vm1 = {
    vm01 = {
        name                = "vm-dev"
        resource_group_name = "rg_dev"
        location            = "East US"
        network_interface_ids = ["/subscriptions/84dd7c9c-ad3c-4682-abd1-5403bd6ffa0d/rg_dev/providers/Microsoft.Network/networkInterfaces/nic-dev"]
        vm_size             = "Standard_B2s"
        admin_username      = "azureuser"
        admin_password      = "P@ssw0rd1234!"
    }
}