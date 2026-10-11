output "mws_workspaces_id" {
  description = "Map of id values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no id are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mws_workspaces_account_id" {
  description = "Map of account_id values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no account_id are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
  sensitive   = true
}
output "mws_workspaces_aws_region" {
  description = "Map of aws_region values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no aws_region are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.aws_region if v.aws_region != null && length(v.aws_region) > 0 }
}
output "mws_workspaces_cloud" {
  description = "Map of cloud values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no cloud are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.cloud if v.cloud != null && length(v.cloud) > 0 }
}
output "mws_workspaces_cloud_resource_container" {
  description = "Map of cloud_resource_container values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no cloud_resource_container are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => one(v.cloud_resource_container) if v.cloud_resource_container != null && length(v.cloud_resource_container) > 0 }
}
output "mws_workspaces_compute_mode" {
  description = "Map of compute_mode values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no compute_mode are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.compute_mode if v.compute_mode != null && length(v.compute_mode) > 0 }
}
output "mws_workspaces_creation_time" {
  description = "Map of creation_time values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no creation_time are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.creation_time if v.creation_time != null }
}
output "mws_workspaces_credentials_id" {
  description = "Map of credentials_id values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no credentials_id are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.credentials_id if v.credentials_id != null && length(v.credentials_id) > 0 }
}
output "mws_workspaces_custom_tags" {
  description = "Map of custom_tags values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no custom_tags are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.custom_tags if v.custom_tags != null && length(v.custom_tags) > 0 }
}
output "mws_workspaces_customer_managed_key_id" {
  description = "Map of customer_managed_key_id values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no customer_managed_key_id are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.customer_managed_key_id if v.customer_managed_key_id != null && length(v.customer_managed_key_id) > 0 }
}
output "mws_workspaces_deployment_name" {
  description = "Map of deployment_name values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no deployment_name are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.deployment_name if v.deployment_name != null && length(v.deployment_name) > 0 }
}
output "mws_workspaces_effective_compute_mode" {
  description = "Map of effective_compute_mode values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no effective_compute_mode are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.effective_compute_mode if v.effective_compute_mode != null && length(v.effective_compute_mode) > 0 }
}
output "mws_workspaces_expected_workspace_status" {
  description = "Map of expected_workspace_status values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no expected_workspace_status are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.expected_workspace_status if v.expected_workspace_status != null && length(v.expected_workspace_status) > 0 }
}
output "mws_workspaces_external_customer_info" {
  description = "Map of external_customer_info values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no external_customer_info are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => one(v.external_customer_info) if v.external_customer_info != null && length(v.external_customer_info) > 0 }
}
output "mws_workspaces_gcp_managed_network_config" {
  description = "Map of gcp_managed_network_config values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no gcp_managed_network_config are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => one(v.gcp_managed_network_config) if v.gcp_managed_network_config != null && length(v.gcp_managed_network_config) > 0 }
}
output "mws_workspaces_gcp_workspace_sa" {
  description = "Map of gcp_workspace_sa values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no gcp_workspace_sa are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.gcp_workspace_sa if v.gcp_workspace_sa != null && length(v.gcp_workspace_sa) > 0 }
}
output "mws_workspaces_gke_config" {
  description = "Map of gke_config values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no gke_config are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => one(v.gke_config) if v.gke_config != null && length(v.gke_config) > 0 }
}
output "mws_workspaces_is_no_public_ip_enabled" {
  description = "Map of is_no_public_ip_enabled values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no is_no_public_ip_enabled are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.is_no_public_ip_enabled if v.is_no_public_ip_enabled != null }
}
output "mws_workspaces_location" {
  description = "Map of location values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no location are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.location if v.location != null && length(v.location) > 0 }
}
output "mws_workspaces_managed_services_customer_managed_key_id" {
  description = "Map of managed_services_customer_managed_key_id values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no managed_services_customer_managed_key_id are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.managed_services_customer_managed_key_id if v.managed_services_customer_managed_key_id != null && length(v.managed_services_customer_managed_key_id) > 0 }
}
output "mws_workspaces_network_connectivity_config_id" {
  description = "Map of network_connectivity_config_id values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no network_connectivity_config_id are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.network_connectivity_config_id if v.network_connectivity_config_id != null && length(v.network_connectivity_config_id) > 0 }
}
output "mws_workspaces_network_id" {
  description = "Map of network_id values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no network_id are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.network_id if v.network_id != null && length(v.network_id) > 0 }
}
output "mws_workspaces_pricing_tier" {
  description = "Map of pricing_tier values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no pricing_tier are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.pricing_tier if v.pricing_tier != null && length(v.pricing_tier) > 0 }
}
output "mws_workspaces_private_access_settings_id" {
  description = "Map of private_access_settings_id values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no private_access_settings_id are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.private_access_settings_id if v.private_access_settings_id != null && length(v.private_access_settings_id) > 0 }
}
output "mws_workspaces_storage_configuration_id" {
  description = "Map of storage_configuration_id values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no storage_configuration_id are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.storage_configuration_id if v.storage_configuration_id != null && length(v.storage_configuration_id) > 0 }
}
output "mws_workspaces_storage_customer_managed_key_id" {
  description = "Map of storage_customer_managed_key_id values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no storage_customer_managed_key_id are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.storage_customer_managed_key_id if v.storage_customer_managed_key_id != null && length(v.storage_customer_managed_key_id) > 0 }
}
output "mws_workspaces_token" {
  description = "Map of token values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no token are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => one(v.token) if v.token != null && length(v.token) > 0 }
  sensitive   = true
}
output "mws_workspaces_workspace_id" {
  description = "Map of workspace_id values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no workspace_id are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.workspace_id if v.workspace_id != null }
}
output "mws_workspaces_workspace_name" {
  description = "Map of workspace_name values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no workspace_name are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.workspace_name if v.workspace_name != null && length(v.workspace_name) > 0 }
}
output "mws_workspaces_workspace_status" {
  description = "Map of workspace_status values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no workspace_status are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.workspace_status if v.workspace_status != null && length(v.workspace_status) > 0 }
}
output "mws_workspaces_workspace_status_message" {
  description = "Map of workspace_status_message values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no workspace_status_message are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.workspace_status_message if v.workspace_status_message != null && length(v.workspace_status_message) > 0 }
}
output "mws_workspaces_workspace_url" {
  description = "Map of workspace_url values across all mws_workspaces, keyed the same as var.mws_workspaces except keys with no workspace_url are omitted"
  value       = { for k, v in databricks_mws_workspaces.mws_workspaces : k => v.workspace_url if v.workspace_url != null && length(v.workspace_url) > 0 }
}

