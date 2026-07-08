rg1 = {
    resource_group ={ 
        name     = "rg_qa"
        location = "West US"
       }
       }
acr1 = {
acr01 = {
name                = "acrqa9838"
resource_group_name = "rg_qa"
location            = "West US"
sku                 = "Basic"
admin_enabled       = true
}
}       

aks1 = {
aks01 = {
name = "aks-qa"
resource_group_name = "rg_qa"
location = "West US"
dns_prefix = "aksqa"
node_pool_name = "nodepool1"
node_count = 2
vm_size = "Standard_B2s"
}
}

storageact = {
    storage01 = {
        name = "strgqa9838"
        resource_group_name = "rg_qa"
        location = "West US"
    }
}
vnet1 = {
    vnet01 = {
        name                = "vnet-qa"
        resource_group_name = "rg_qa"
        location            = "West US"
    }
}
subnet1 = {
    subnet01 = {
        name                 = "subnet-qa"
        resource_group_name  = "rg_qa"
        virtual_network_name = "vnet-qa"
        address_prefixes     = "10.0.1.0/24"
    }
    subnet02 = {
        name                 = "subnet-qa2"
        resource_group_name  = "rg_qa"
        virtual_network_name = "vnet-qa"
        address_prefixes     = "10.0.2.0/24"
    }
}
publicip1 = {
    publicip01 = {
        name                = "publicip-qa"
        resource_group_name = "rg_qa"
        location            = "West US"
        allocation_method   = "Static"
        sku                 = "Standard"
    }
}
nic1 = {
  vm01 = {
    name                 = "nic-qa"
    resource_group_name  = "rg_qa"
    location             = "West US"
        subnet_id           = "/subscriptions/84dd7c9c-ad3c-4682-abd1-5403bd6ffa0d/resourceGroups/rg_qa/providers/Microsoft.Network/virtualNetworks/vnet-qa/subnets/subnet-qa"
        public_ip_address_id = "/subscriptions/84dd7c9c-ad3c-4682-abd1-5403bd6ffa0d/resourceGroups/rg_qa/providers/Microsoft.Network/publicIPAddresses/publicip-qa"
    }
}
vm1 = {
    vm01 = {
        name                = "vm-qa"
        resource_group_name = "rg_qa"
        location            = "West US"
        network_interface_ids = ["/subscriptions/84dd7c9c-ad3c-4682-abd1-5403bd6ffa0d/rg_qa/providers/Microsoft.Network/networkInterfaces/nic-qa"]
        vm_size             = "Standard_B2s"
        admin_username      = "azureuser"
        admin_password      = "P@ssw0rd1234!"
    }
}