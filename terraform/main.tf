provider "azurerm" {
  features = {}
}

resource "azurerm_resource_group" "devops_projects" {
  name     = "Devops-Projects"
  location = "East US"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vm-ubuntu-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.devops_projects.location
  resource_group_name = azurerm_resource_group.devops_projects.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "default"
  resource_group_name  = azurerm_resource_group.devops_projects.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.0.0/24"]
}

resource "azurerm_public_ip" "public_ip" {
  name                = "jenkins-vm-ip"
  location            = azurerm_resource_group.devops_projects.location
  resource_group_name = azurerm_resource_group.devops_projects.name
  allocation_method   = "Dynamic"
}

resource "azurerm_network_interface" "jenkins_nic" {
  name                = "jenkins-vm-nic"
  location            = azurerm_resource_group.devops_projects.location
  resource_group_name = azurerm_resource_group.devops_projects.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
  }
}

resource "azurerm_virtual_machine" "jenkins_vm" {
  name                  = "Jenkins-vm"
  location              = azurerm_resource_group.devops_projects.location
  resource_group_name   = azurerm_resource_group.devops_projects.name
  network_interface_ids = [azurerm_network_interface.jenkins_nic.id]
  vm_size               = "Standard_B1ms"

  storage_os_disk {
    name              = "jenkins-os-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }


  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
