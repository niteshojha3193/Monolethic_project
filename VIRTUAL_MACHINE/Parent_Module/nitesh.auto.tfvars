virtual_machine = {
  vm1 = {
    vm_name           = "frontend-vm"
    rg_name           = "amit"
    location          = "Central India"
    username          = "pardeep"
    password          = "Nokia123"
    nic_name          = "vm1-nic"
    vnet_name         = "amit_vnet"
    subnet_name       = "amit_subnet1"
    pip_name          = "amit_pip"
    allocation_method = "Static"
    sku               = "Standard"
  },
  vm2 = {
    vm_name           = "backend-vm"
    rg_name           = "amit"
    location          = "Central India"
    username          = "pardeep"
    password          = "Nokia123"
    nic_name          = "vm2-nic"
    vnet_name         = "amit_vnet"
    subnet_name       = "amit_subnet2"
    pip_name          = "sonu_pip"
    allocation_method = "Static"
    sku               = "Standard"
  }
}

publicip = {
  pip1 = {
    rg_name           = "amit"
    location          = "Central India"
    pip_name          = "amit_pip"
    allocation_method = "Static"
    sku               = "Standard"
  },
  pip2 = {
    rg_name           = "amit"
    location          = "Central India"
    pip_name          = "sonu_pip"
    allocation_method = "Static"
    sku               = "Standard"
  }
}

kv = {
  kv1 ={
    kv_name = "niteshkv"
    location_name = "centralindia"
    resource_group_name = "amit"
    enabled_for_disk_encryption = true
    tenant_id = "81a12d0b-0093-495d-869a-835d58dc9fad"
    soft_delete_retention_days = 7
    purge_protection_enabled = false
    sku_name = "standard"
    object_id = "a9ca42f3-6c0f-4fa1-b294-17988d242580"
  }
}

kvsecret = {
  kvsecret1= {
    kvsecret = "pardeep"
    value = "Nokia123"
    # key_vault_id = ""
    kv    = "niteshkv"
    rg_name = "amit"
  }
}

     rgs = {
      rg1 ={
      rg_name = "amit"
      location = "centralindia"
      }
    }


subnet_name = {
  subnet_name1= {
  subnet_name = "amit_subnet1"
    vnet_name = "amit_vnet"
    rg_name = "amit"
    address_prefixes= ["10.0.1.0/24"]
  }

  subnet_name2= {
  subnet_name = "amit_subnet2"
    vnet_name = "amit_vnet"
    rg_name = "amit"
    address_prefixes= ["10.0.2.0/24"]
  }
}


     vnet_name = {
      vnet_name1 ={
    vnet_name = "amit_vnet"
    rg_name = "amit"
    location = "centralindia"
    address_space = ["10.0.0.0/16"]
      }
     }