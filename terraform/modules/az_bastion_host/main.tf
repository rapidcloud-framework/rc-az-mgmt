resource "azurerm_bastion_host" "bastion" {
  name                = local.name
  location            = local.location
  resource_group_name = local.resource_group_name
  sku                 = var.sku
  copy_paste_enabled  = local.copy_paste_enabled
  file_copy_enabled   = local.file_copy_enabled

  dynamic "ip_configuration" {
    for_each = local.subnet_id == "" || local.public_ip_address_id == "" ? toset([]) : toset([1])
    content {
      name                 = local.name
      subnet_id            = local.subnet_id
      public_ip_address_id = local.public_ip_address_id
    }

  }
}

