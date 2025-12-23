virtual_machine = {
  vm1 = {
    vm_name           = "frontend-vm"
    rg_name           = "amit"
    location          = "eastus2"
    username          = "pardeep"
    password          = "Nokia123"
    nic_name          = "vm1-nic"
    vnet_name         = "amit_vnet"
    subnet_name       = "amit_subnet1"
    pip_name          = "amit_pip"
    allocation_method = "Static"
    size           = "Standard_D2s_v3"
    # sku               = "Standard"
  }
  vm2 = {
    vm_name           = "backend-vm"
    rg_name           = "amit"
    location          = "eastus2"
    username          = "pardeep"
    password          = "Nokia123"
    nic_name          = "vm2-nic"
    vnet_name         = "amit_vnet"
    subnet_name       = "amit_subnet2"
    pip_name          = "sonu_pip"
    allocation_method = "Static"
    size               = "Standard_D2s_v3"
    # sku               = "Standard"
  }
}

publicip = {
  pip1 = {
    rg_name           = "amit"
    location          = "eastus2"
    pip_name          = "amit_pip"
    allocation_method = "Static"
    sku               = "Standard"
  },
  pip2 = {
    rg_name           = "amit"
    location          = "eastus2"
    pip_name          = "sonu_pip"
    allocation_method = "Static"
    sku               = "Standard"
  }
}

kv = {
  kv1 = {
    kv_name                     = "ojhakv"
    location_name               = "eastus2"
    resource_group_name         = "amit"
    enabled_for_disk_encryption = true
    tenant_id                   = "52bc51cf-e7ed-4509-9a87-a0b4d1c97f38"
    soft_delete_retention_days  = 7
    purge_protection_enabled    = false
    sku_name                    = "standard"
    object_id                   = "0c6977c0-18a5-42c2-b86d-dc2688544ba7"
  }
}

# kvsecret = {
#   kvsecret1 = {
#     kvsecret = "pardeep"
#     value    = "Nokia123"
#     # key_vault_id = ""
#     kv      = "niteshkv"
#     rg_name = "amit"
#   }
# }

rgs = {
  rg1 = {
    rg_name  = "amit"
    location = "eastus2"
  }
}


subnet_name = {
  subnet_name1 = {
    subnet_name      = "amit_subnet1"
    vnet_name        = "amit_vnet"
    rg_name          = "amit"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet_name2 = {
    subnet_name      = "amit_subnet2"
    vnet_name        = "amit_vnet"
    rg_name          = "amit"
    address_prefixes = ["10.0.2.0/24"]
  }
}


vnet_name = {
  vnet_name1 = {
    vnet_name     = "amit_vnet"
    rg_name       = "amit"
    location      = "eastus2"
    address_space = ["10.0.0.0/16"]
  }
}


sqlserver = {
  sqlserver1 = {
    sqlserver                    = "sqlnaman8435"
    rg                           = "amit"
    location                     = "eastus2"
    version                      = "12.0"
    administrator_login          = "adminnitesh"
    administrator_login_password = "Admin@nitesh"
    minimum_tls_version          = "1.2"
    login_username               = "Niteshkumarojha@ashishraawatoutlook.onmicrosoft.com	 "
    object_id                    = "0c6977c0-18a5-42c2-b86d-dc2688544ba7"
  }
}

sqldb = {
  sqldb1 = {
    sqldb_name     = "sqldbnaman8435"
    sqlserver_name = "sqlnaman8435"
    rg_name        = "amit"

  }
}