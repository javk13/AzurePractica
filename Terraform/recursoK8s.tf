# Cluster gestionado de kubernetes
resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  dns_prefix          = "Cluster"

  default_node_pool {
    name       = "nodo1"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}