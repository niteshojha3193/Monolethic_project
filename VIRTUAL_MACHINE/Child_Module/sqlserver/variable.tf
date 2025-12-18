variable "sqlserver" {
  type = map(object({
    sqlserver = string
    rg = string
    location = string
    version = string
    administrator_login= string
    administrator_login_password = string
    minimum_tls_version = string
    login_username = string
    object_id = string
  }))
}