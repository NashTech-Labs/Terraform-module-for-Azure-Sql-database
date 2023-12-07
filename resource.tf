provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "sql_rg" {
  name = var.resource_group_name
}

data "azurerm_sql_server" "sql_server" {
  name                = var.server_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_sql_database" "sql_database" {
  name                = var.name
  resource_group_name = data.azurerm_resource_group.sql_rg.name
  location            = data.azurerm_resource_group.sql_rg.location
  server_name         = data.azurerm_sql_server.sql_server.name

}
