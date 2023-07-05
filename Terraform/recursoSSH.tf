#Creación clave ssh
resource "tls_private_key" "azure13_ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096

  #Copia de clave privada al ordenador propio y cambio de permisos
  provisioner "local-exec" { 
    command = <<-EOT
      echo '${tls_private_key.azure13_ssh.private_key_pem}' > ~/.ssh/id_rsa
      chmod 400 ~/.ssh/id_rsa
    EOT
  }

  #Copia de clave pública al ordenador propio y cambio de permisos
  provisioner "local-exec" { 
    command = <<-EOT
      echo '${tls_private_key.azure13_ssh.public_key_openssh}' > ~/.ssh/id_rsa.pub
      chmod 400 ~/.ssh/id_rsa.pub
    EOT
  }
}