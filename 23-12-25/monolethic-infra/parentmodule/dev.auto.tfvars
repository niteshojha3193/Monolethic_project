virtual_machine = {
  vm1 = {
    vm_name           = "frontend-vm"
    rg_name           = "ojhadev"
    location          = "centralindia"
    username          = "pardeep"
    password          = "Nokia123"
    nic_name          = "vm1-nic"
    vnet_name         = "ojha_vnet"
    subnet_name       = "ojha_subnet1"
    pip_name          = "frontend_pip"
    allocation_method = "Static"
    size              = "Standard_D2s_v3"
    # sku               = "Standard"
  }
  vm2 = {
    vm_name           = "backend-vm"
    rg_name           = "ojhadev"
    location          = "centralindia"
    username          = "pardeep"
    password          = "Nokia123"
    nic_name          = "vm2-nic"
    vnet_name         = "ojha_vnet"
    subnet_name       = "ojha_subnet2"
    pip_name          = "backend_pip"
    allocation_method = "Static"
    size              = "Standard_D2s_v3"
    # sku               = "Standard"
  }
}

publicip = {
  pip1 = {
    rg_name           = "ojhadev"
    location          = "centralindia"
    pip_name          = "frontend_pip"
    allocation_method = "Static"
    sku               = "Standard"
  },
  pip2 = {
    rg_name           = "ojhadev"
    location          = "centralindia"
    pip_name          = "backend_pip"
    allocation_method = "Static"
    sku               = "Standard"
  }
}

kv = {
  kv1 = {
    kv_name                     = "chaprakv"
    location_name               = "centralindia"
    resource_group_name         = "ojhadev"
    enabled_for_disk_encryption = true
    tenant_id                   = "52bc51cf-e7ed-4509-9a87-a0b4d1c97f38"
    soft_delete_retention_days  = 7
    purge_protection_enabled    = false
    sku_name                    = "standard"
    object_id                   = "0c6977c0-18a5-42c2-b86d-dc2688544ba7"
  }
}



rgs = {
  rg1 = {
    rg_name  = "ojhadev"
    location = "centralindia"
  }
}


subnet_name = {
  subnet_name1 = {
    subnet_name      = "ojha_subnet1"
    vnet_name        = "ojha_vnet"
    rg_name          = "ojhadev"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet_name2 = {
    subnet_name      = "ojha_subnet2"
    vnet_name        = "ojha_vnet"
    rg_name          = "ojhadev"
    address_prefixes = ["10.0.2.0/24"]
  }
}


vnet_name = {
  vnet_name1 = {
    vnet_name     = "ojha_vnet"
    rg_name       = "ojhadev"
    location      = "centralindia"
    address_space = ["10.0.0.0/16"]
  }
}


sqlserver = {
  sqlserver1 = {
    sqlserver                    = "sqlnaman2312"
    rg                           = "ojhadev"
    location                     = "centralindia"
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
    sqldb_name     = "sqldbnaman2312"
    sqlserver_name = "sqlnaman2312"
    rg_name        = "ojhadev"

  }
}