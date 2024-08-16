resource "azurerm_kubernetes_cluster" "testnode" {
  name                = "testnode"
  location            = azurerm_resource_group.devops_projects.location
  resource_group_name = azurerm_resource_group.devops_projects.name
  dns_prefix          = "testnode"

  default_node_pool {
    name       = "agentpool"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "azure"
    network_policy    = "azure"
    service_cidr      = "10.0.0.0/16"
    dns_service_ip    = "10.0.0.10"
    docker_bridge_cidr = "172.17.0.1/16"
  }
}
