resource "azurerm_kubernetes_cluster" "default" {
  name                = var.clustername
  location            = "West US 2"
  resource_group_name = var.resourcegroup
  dns_prefix          = var.clustername

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.appId
    client_secret = var.password
   
  }

  tags = {
    environment = "Demo"
  }
}