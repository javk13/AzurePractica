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
    #//public_key = file(var.public_key_path)
    #Incluyo referencia a llave pública nueva
    public_key = file(var.public_key)
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  plan {
    name      = "9-gen2"
    product   = "almalinux"
    publisher = "almalinux"
  }


  source_image_reference {
    publisher = "almalinux"
    offer     = "almalinux"
    sku       = "9-gen2"
    version   = "9.1.2022122801"
  }
}

