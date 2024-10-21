
resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = var.resource_group_name
}

# This is the module call
module "log_analytics_workspace" {
  
  source = "Azure/avm-res-operationalinsights-workspace/azurerm"
  enable_telemetry                          = var.enable_telemetry
  location                                  = azurerm_resource_group.rg.location
  resource_group_name                       = azurerm_resource_group.rg.name
  name                                      = "myworkspace"
  log_analytics_workspace_retention_in_days = 30
  log_analytics_workspace_sku               = "PerGB2018"
  log_analytics_workspace_identity = {
    type = "SystemAssigned"
  }
}