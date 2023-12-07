variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
  default = "sql_database_rg"
}

variable "server_name" {
  description = "The name of the existing Azure SQL Server"
  default = "sql_database_server12"
}

variable "name"{
  type = string
  description = "sql database name"
  default = "sql_database12"
 }
