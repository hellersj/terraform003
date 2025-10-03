resource "azurerm_resource_group" "example" {
  name     = "pip-resources"
  location = "Westus"
}

/*
resource "azurerm_public_ip" "first_pip" {
  count =3
  name                = var.pip_names[count.index]
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }

}

variable "pip_names" {
  type = list 
  default = ["dev-pip","qa-pip","prod-pip"]
  
}*/

resource "azurerm_public_ip" "example" {
  count =2
  name                = "Dev-${count.index}"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"
  sku                  = "Standard"            # <- antes era "Basic"

  tags = {
    environment = "Production"
  }

}