resource "azurerm_key_vault" "kv" {
    for_each = var.kv
  name                        = each.value.kv_name
  location                    = each.value.location_name
  resource_group_name         =each.value.resource_group_name
  enabled_for_disk_encryption = each.value.enabled_for_disk_encryption
  tenant_id                   = each.value.tenant_id
  soft_delete_retention_days  = each.value.soft_delete_retention_days
  purge_protection_enabled    = each.value.purge_protection_enabled

  sku_name = each.value.sku_name

  access_policy {
    tenant_id = each.value.tenant_id
    object_id = each.value.object_id

  }

}