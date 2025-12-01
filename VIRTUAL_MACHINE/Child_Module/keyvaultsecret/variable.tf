variable "kvsecret" {
  type = map(object({
    kvsecret = string
    value = string
    # key_vault_id = string
    kv    = string
    rg_name = string
  }))
    
}
