# Creación del repositorio de imágenes
resource "azurerm_container_registry" "acr" {
  name                = var.registry_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = var.registry_sku
  admin_enabled       = true
}