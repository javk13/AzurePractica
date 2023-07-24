# Salidas de Terraform

# Muestra grupo de recursos
#output "resource_group_id" {
  #value = azurerm_resource_group.rg.id
#}

# Muestra IP Pública
output "vm_public_ip" {
  value = azurerm_public_ip.pip_vm.ip_address
}

# Muestra usuario para conexión por ssh
output "ssh_user" {
  value = var.ssh_user
}

#output "acr_login_server" {
  #value = azurerm_container_registry.acr.login_server
#}

# Muestra usuario container registry
output "acr_admin_user" {
  value = azurerm_container_registry.acr.admin_username
}

# Muestra contraseña container registry
output "acr_admin_pass" {
  # salida sensible
  //value     = azurerm_container_registry.acr.admin_password
  //sensitive = true
  # Muestra información
  value = nonsensitive(azurerm_container_registry.acr.admin_password)
}


# Cluster Kubernetes:

#output "id" {
  #value = azurerm_kubernetes_cluster.aks.id
#}

#output "host" {
  #value = azurerm_kubernetes_cluster.aks.kube_config.0.host
  #sensitive = true
#}

#output "kube_config" {
  #value = azurerm_kubernetes_cluster.aks.kube_config_raw
  #sensitive = true
#}

# Creo que no es necesario.
#output "client_certificate" {
  #value = azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate
  #sensitive = true
#}