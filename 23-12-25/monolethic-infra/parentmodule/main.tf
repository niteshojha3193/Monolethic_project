module "rg" {
  source = "../ChildModule/Resource_group/"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../ChildModule/virtual_network"
  vnet_name  = var.vnet_name
}

module "subnet" {
  depends_on  = [module.vnet]
  source      = "../ChildModule/subnet"
  subnet_name = var.subnet_name
}

module "pip" {
  depends_on = [module.rg]
  source     = "../ChildModule/public_IP"
  publicip   = var.publicip
}

module "virtual_machine" {
  depends_on      = [module.pip, module.rg, module.subnet, module.vnet]
  source          = "../ChildModule/virtual_linux_machine"
  virtual_machine = var.virtual_machine
}

module "kv" {
  source     = "../ChildModule/key_vault"
  depends_on = [module.rg]
  kv         = var.kv

}


module "sqlserver" {
  source     = "../ChildModule/sqlserver"
  depends_on = [module.rg]
  sqlserver  = var.sqlserver

}

module "sqldatabase" {
  source     = "../ChildModule/sqldatabase"
  depends_on = [module.sqlserver, module.rg]
  sqldb      = var.sqldb

}
