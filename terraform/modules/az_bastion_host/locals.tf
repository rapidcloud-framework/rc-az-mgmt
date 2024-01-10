locals {
  name        = var.name
  location             = var.location
  resource_group_name  = var.resource_group
  file_copy_enabled    = var.file_copy_enabled
  copy_paste_enabled   = var.copy_paste_enabled
  subnet_id            = var.subnet_id
  public_ip_address_id = var.public_ip_address_id
}
