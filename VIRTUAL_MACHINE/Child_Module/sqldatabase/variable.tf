variable "sqldb" {
  type = map(object({
    sqldb_name = string
    sqlserver_name = string
    rg_name = string
  }))
}
