data "azurerm_key_vault" "kv" {
  for_each = var.kvsecret
  # depends_on          = [module.key-vault]
  name                = each.value.kv
  resource_group_name = each.value.rg_name
}


resource "azurerm_key_vault_secret" "kvsecret" {
    for_each = var.kvsecret
  name         = each.value.kvsecret
  value        = each.value.value
 key_vault_id = data.azurerm_key_vault.kv[each.key].id

}