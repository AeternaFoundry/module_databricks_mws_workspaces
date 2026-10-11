variable "mws_workspaces" {
  description = <<EOT
Map of mws_workspaces, attributes below
Required:
    - account_id
    - workspace_name
Optional:
    - aws_region
    - cloud
    - compute_mode
    - creation_time
    - credentials_id
    - custom_tags
    - customer_managed_key_id
    - deployment_name
    - expected_workspace_status
    - is_no_public_ip_enabled
    - location
    - managed_services_customer_managed_key_id
    - network_connectivity_config_id
    - network_id
    - pricing_tier
    - private_access_settings_id
    - storage_configuration_id
    - storage_customer_managed_key_id
    - workspace_id
    - workspace_status
    - workspace_status_message
    - workspace_url
    - cloud_resource_container (block):
        - gcp (required, block):
            - project_id (required)
    - external_customer_info (block):
        - authoritative_user_email (required)
        - authoritative_user_full_name (required)
        - customer_name (required)
    - gcp_managed_network_config (block):
        - gke_cluster_pod_ip_range (optional)
        - gke_cluster_service_ip_range (optional)
        - subnet_cidr (required)
    - gke_config (block):
        - connectivity_type (optional)
        - master_ip_range (optional)
    - timeouts (block):
        - create (optional)
        - read (optional)
        - update (optional)
    - token (block):
        - comment (optional)
        - lifetime_seconds (optional)
        - token_id (optional)
        - token_value (optional)
EOT

  type = map(object({
    account_id                               = string
    workspace_name                           = string
    aws_region                               = optional(string)
    cloud                                    = optional(string)
    compute_mode                             = optional(string)
    creation_time                            = optional(number)
    credentials_id                           = optional(string)
    custom_tags                              = optional(map(string))
    customer_managed_key_id                  = optional(string)
    deployment_name                          = optional(string)
    expected_workspace_status                = optional(string)
    is_no_public_ip_enabled                  = optional(bool)
    location                                 = optional(string)
    managed_services_customer_managed_key_id = optional(string)
    network_connectivity_config_id           = optional(string)
    network_id                               = optional(string)
    pricing_tier                             = optional(string)
    private_access_settings_id               = optional(string)
    storage_configuration_id                 = optional(string)
    storage_customer_managed_key_id          = optional(string)
    workspace_id                             = optional(number)
    workspace_status                         = optional(string)
    workspace_status_message                 = optional(string)
    workspace_url                            = optional(string)
    cloud_resource_container = optional(object({
      gcp = object({
        project_id = string
      })
    }))
    external_customer_info = optional(object({
      authoritative_user_email     = string
      authoritative_user_full_name = string
      customer_name                = string
    }))
    gcp_managed_network_config = optional(object({
      gke_cluster_pod_ip_range     = optional(string)
      gke_cluster_service_ip_range = optional(string)
      subnet_cidr                  = string
    }))
    gke_config = optional(object({
      connectivity_type = optional(string)
      master_ip_range   = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    token = optional(object({
      comment          = optional(string)
      lifetime_seconds = optional(number)
      token_id         = optional(string)
      token_value      = optional(string)
    }))
  }))
}

