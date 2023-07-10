#Ruta para ubicación de clave pública ya existente
#Anulo por nueva creacción
#Mantengo código para uso por profesores
//variable "public_key_path" {
  //type        = string
  //description = "Ruta para la clave pública de acceso a las instancias"
  //default     = "~/.ssh/id_rsa.pub"
//}

# Nombre del grupo de recursos
variable "resource_group_name" {
  default = "CasoPractico"
}

# Región para crear infraestructura
variable "location_name" {
  default = "uksouth"
}

# Ruta para archivo con clave pública
variable "public_key" {
  type        = string
  description = "Ruta para la clave pública de acceso a las instancias"
  default     = "~/.ssh/id_rsa.pub"
}

# Usuario para hacer ssh
variable "ssh_user" {
  default     = "Javk13"
}

# Nombre de red
variable "network_name" {
  default = "vnet1"
}

# Nombre de sub red
variable "subnet_name" {
  default = "subnet1"
}

# Nombre usuario del repositorio de imágenes en Azure
variable "registry_name" {
  type        = string
  default     = "javk13"
}

# Nivel de servicio del registry/repositorio (También llamada SKU)
variable "registry_sku" {
  type        = string
  description = "Tipo de SKU a utilizar por el registry. Opciones válidas: Basic, Standard, Premium."
  default     = "Basic"
}