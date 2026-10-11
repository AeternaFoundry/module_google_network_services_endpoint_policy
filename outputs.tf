output "network_services_endpoint_policies_id" {
  description = "Map of id values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no id are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_services_endpoint_policies_authorization_policy" {
  description = "Map of authorization_policy values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no authorization_policy are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.authorization_policy if v.authorization_policy != null && length(v.authorization_policy) > 0 }
}
output "network_services_endpoint_policies_client_tls_policy" {
  description = "Map of client_tls_policy values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no client_tls_policy are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.client_tls_policy if v.client_tls_policy != null && length(v.client_tls_policy) > 0 }
}
output "network_services_endpoint_policies_create_time" {
  description = "Map of create_time values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no create_time are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "network_services_endpoint_policies_deletion_policy" {
  description = "Map of deletion_policy values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no deletion_policy are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "network_services_endpoint_policies_description" {
  description = "Map of description values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no description are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "network_services_endpoint_policies_effective_labels" {
  description = "Map of effective_labels values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no effective_labels are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "network_services_endpoint_policies_endpoint_matcher" {
  description = "Map of endpoint_matcher values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no endpoint_matcher are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => one(v.endpoint_matcher) if v.endpoint_matcher != null && length(v.endpoint_matcher) > 0 }
}
output "network_services_endpoint_policies_labels" {
  description = "Map of labels values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no labels are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "network_services_endpoint_policies_name" {
  description = "Map of name values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no name are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_services_endpoint_policies_project" {
  description = "Map of project values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no project are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.project if v.project != null && length(v.project) > 0 }
}
output "network_services_endpoint_policies_server_tls_policy" {
  description = "Map of server_tls_policy values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no server_tls_policy are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.server_tls_policy if v.server_tls_policy != null && length(v.server_tls_policy) > 0 }
}
output "network_services_endpoint_policies_terraform_labels" {
  description = "Map of terraform_labels values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no terraform_labels are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "network_services_endpoint_policies_traffic_port_selector" {
  description = "Map of traffic_port_selector values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no traffic_port_selector are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => one(v.traffic_port_selector) if v.traffic_port_selector != null && length(v.traffic_port_selector) > 0 }
}
output "network_services_endpoint_policies_type" {
  description = "Map of type values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no type are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.type if v.type != null && length(v.type) > 0 }
}
output "network_services_endpoint_policies_update_time" {
  description = "Map of update_time values across all network_services_endpoint_policies, keyed the same as var.network_services_endpoint_policies except keys with no update_time are omitted"
  value       = { for k, v in google_network_services_endpoint_policy.network_services_endpoint_policies : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

