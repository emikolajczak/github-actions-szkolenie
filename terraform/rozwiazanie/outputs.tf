output "resource_name_prefix" {
  value = "${var.name_prefix}-${random_id.suffix.hex}"
}