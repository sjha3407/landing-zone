rgs = {
  rg1 = {
    name     = "rg-vm"
    location = "centralindia"
  }
   rg = {
    name     = "rg-vm1"
    location = "centralindia"
  }
   rg2 = {
    name     = "rg-vm2"
    location = "centralindia"
  }
}

vnets = {
  vnet1 = {
    name                = "vm-vnet"
    location            = "centralindia"
    resource_group_name = "rg-vm"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  snet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-vm"
    virtual_network_name = "vm-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  snet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "rg-vm"
    virtual_network_name = "vm-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

vms = {
  vm1 = {
    nic_name        = "frontend-vm-nic"
    location        = "centralindia"
    rg_name         = "rg-vm"
    nic_subnet_name = "frontend-subnet"
    nic_vnet_name   = "vm-vnet"
    nic_pip_name    = "pip-vm-frontend-vm"
    vm_name         = "frontend-vm"
    vm_size         = "Standard_B1s"
    admin_username  = "devopsadmin"
    admin_password  = "DevOps@123"
  }
  vm2 = {
    nic_name        = "backend-vm-nic"
    location        = "centralindia"
    rg_name         = "rg-vm"
    nic_subnet_name = "backend-subnet"
    nic_vnet_name   = "vm-vnet"
    nic_pip_name    = "pip-vm-backend-vm"
    vm_name         = "backend-vm"
    vm_size         = "Standard_B1s"
    admin_username  = "devopsadmin"
    admin_password  = "DevOps@123"
  }
}