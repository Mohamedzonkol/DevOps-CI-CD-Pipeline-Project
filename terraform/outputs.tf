output "jenkins_vm_public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}

output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.testnode.name
}

output "kubernetes_cluster_api_server" {
  value = azurerm_kubernetes_cluster.testnode.kube_config.0.host
}
