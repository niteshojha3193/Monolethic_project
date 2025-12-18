variable "virtual_machine" {
  type = map(object({
    vm_name     = string
    rg_name     = string
    location    = string
    username    = string
    password    = string
    nic_name    = string
    vnet_name   = string
     size    = string   
    subnet_name = string
    pip_name    = string
  }))
}

variable "publicip" {
  type = map(object({

    pip_name          = string
    rg_name           = string
    location          = string
    allocation_method = string
    sku               = string


  }))
}


variable "kv" {
  type = map(object({
    kv_name                     = string
    location_name               = string
    resource_group_name         = string
    enabled_for_disk_encryption = bool
    tenant_id                   = string
    soft_delete_retention_days  = number
    purge_protection_enabled    = bool
    sku_name                    = string
    object_id                   = string
  }))

}

# variable "kvsecret" {
#   type = map(object({
#     kvsecret = string
#     value    = string
#     # key_vault_id = string
#     kv      = string
#     rg_name = string
#   }))

# }


variable "rgs" {
  type = map(object({
    rg_name  = string
    location = string
  }))


}

variable "subnet_name" {
  type = map(object({
    subnet_name      = string
    vnet_name        = string
    rg_name          = string
    address_prefixes = list(string)
  }))
}


variable "vnet_name" {
  type = map(object({
    vnet_name     = string
    rg_name       = string
    location      = string
    address_space = list(string)
  }))
}

variable "sqlserver" {
  type = map(object({
    sqlserver                    = string
    rg                           = string
    location                     = string
    version                      = string
    administrator_login          = string
    administrator_login_password = string
    minimum_tls_version          = string
    login_username               = string
    object_id                    = string
  }))
}


variable "sqldb" {
  type = map(object({
    sqldb_name     = string
    sqlserver_name = string
    rg_name        = string
  }))
}
