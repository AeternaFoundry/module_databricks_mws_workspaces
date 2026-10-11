resource "databricks_mws_workspaces" "mws_workspaces" {
  for_each = var.mws_workspaces

  account_id                               = each.value.account_id
  workspace_name                           = each.value.workspace_name
  aws_region                               = each.value.aws_region
  cloud                                    = each.value.cloud
  compute_mode                             = each.value.compute_mode
  creation_time                            = each.value.creation_time
  credentials_id                           = each.value.credentials_id
  custom_tags                              = each.value.custom_tags
  customer_managed_key_id                  = each.value.customer_managed_key_id
  deployment_name                          = each.value.deployment_name
  expected_workspace_status                = each.value.expected_workspace_status
  is_no_public_ip_enabled                  = each.value.is_no_public_ip_enabled
  location                                 = each.value.location
  managed_services_customer_managed_key_id = each.value.managed_services_customer_managed_key_id
  network_connectivity_config_id           = each.value.network_connectivity_config_id
  network_id                               = each.value.network_id
  pricing_tier                             = each.value.pricing_tier
  private_access_settings_id               = each.value.private_access_settings_id
  storage_configuration_id                 = each.value.storage_configuration_id
  storage_customer_managed_key_id          = each.value.storage_customer_managed_key_id
  workspace_id                             = each.value.workspace_id
  workspace_status                         = each.value.workspace_status
  workspace_status_message                 = each.value.workspace_status_message
  workspace_url                            = each.value.workspace_url

  dynamic "cloud_resource_container" {
    for_each = each.value.cloud_resource_container != null ? [each.value.cloud_resource_container] : []
    content {
      gcp {
        project_id = cloud_resource_container.value.gcp.project_id
      }
    }
  }

  dynamic "external_customer_info" {
    for_each = each.value.external_customer_info != null ? [each.value.external_customer_info] : []
    content {
      authoritative_user_email     = external_customer_info.value.authoritative_user_email
      authoritative_user_full_name = external_customer_info.value.authoritative_user_full_name
      customer_name                = external_customer_info.value.customer_name
    }
  }

  dynamic "gcp_managed_network_config" {
    for_each = each.value.gcp_managed_network_config != null ? [each.value.gcp_managed_network_config] : []
    content {
      gke_cluster_pod_ip_range     = gcp_managed_network_config.value.gke_cluster_pod_ip_range
      gke_cluster_service_ip_range = gcp_managed_network_config.value.gke_cluster_service_ip_range
      subnet_cidr                  = gcp_managed_network_config.value.subnet_cidr
    }
  }

  dynamic "gke_config" {
    for_each = each.value.gke_config != null ? [each.value.gke_config] : []
    content {
      connectivity_type = gke_config.value.connectivity_type
      master_ip_range   = gke_config.value.master_ip_range
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }

  dynamic "token" {
    for_each = each.value.token != null ? [each.value.token] : []
    content {
      comment          = token.value.comment
      lifetime_seconds = token.value.lifetime_seconds
      token_id         = token.value.token_id
      token_value      = token.value.token_value
    }
  }
}

