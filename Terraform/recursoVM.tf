#Creación de máquina virtual
resource "azurerm_linux_virtual_machine" "vm" {
  name                = "vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_DS1_v2"
  admin_username      = var.ssh_user
  network_interface_ids = [
    azurerm_network_interface.nic_vm.id,
  ]

  #Administración de clave pública
  admin_ssh_key {
    username   = var.ssh_user
    #Anulo referencia a variable con claves ya existentes
    //public_key = file(var.public_key_path)
    #Incluyo referencia a llave pública nueva
    public_key = file(var.public_key)
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  plan {
    name      = "centos-9-stream-latest"
    product   = "centos-9-stream-latest"
    publisher = "procomputers"
  }


  source_image_reference {
    publisher = "procomputers"
    offer     = "centos-9-stream-latest"
    sku       = "centos-9-stream-latest"
    version   = "9.2023.0218"
  }
}

