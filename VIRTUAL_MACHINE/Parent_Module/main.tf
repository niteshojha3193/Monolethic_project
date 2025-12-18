module "rg" {
  source = "../Child_Module/Resource_group/"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../Child_Module/virtual_network"
  vnet_name  = var.vnet_name
}

module "subnet" {
  depends_on  = [module.vnet]
  source      = "../Child_Module/subnet"
  subnet_name = var.subnet_name
}

module "pip" {
  depends_on = [module.rg]
  source     = "../Child_Module/public_IP"
  publicip   = var.publicip
}

module "virtual_machine" {
  depends_on      = [module.pip, module.rg, module.subnet, module.vnet]
  source          = "../Child_Module/virtual_machine"
  virtual_machine = var.virtual_machine
}

module "kv" {
  source     = "../Child_Module/keyvault"
  depends_on = [module.rg]
  kv         = var.kv

}

# module "kvsecret" {
#   source     = "../Child_Module/keyvaultsecret"
#   depends_on = [module.kv, module.rg]
#   kvsecret   = var.kvsecret
# }

module "sqlserver" {
  source     = "../Child_Module/sqlserver"
  depends_on = [module.rg]
  sqlserver  = var.sqlserver

}

module "sqldatabase" {
  source     = "../Child_Module/sqldatabase"
  depends_on = [module.sqlserver, module.rg]
  sqldb      = var.sqldb

}

  