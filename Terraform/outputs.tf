# Salidas de Terraform

# Muestra grupo de recursos
output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

# Muestra IP Pública
output "vm_public_ip" {
  value = azurerm_public_ip.pip_vm.ip_address
}

# Muestra usuario para conexión por ssh
output "ssh_user" {
  value = var.ssh_user
}

