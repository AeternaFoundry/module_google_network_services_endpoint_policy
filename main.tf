resource "google_network_services_endpoint_policy" "network_services_endpoint_policies" {
  for_each = var.network_services_endpoint_policies

  name                 = each.value.name
  type                 = each.value.type
  authorization_policy = each.value.authorization_policy
  client_tls_policy    = each.value.client_tls_policy
  deletion_policy      = each.value.deletion_policy
  description          = each.value.description
  labels               = each.value.labels
  project              = each.value.project
  server_tls_policy    = each.value.server_tls_policy

  endpoint_matcher {
    metadata_label_matcher {
      metadata_label_match_criteria = each.value.endpoint_matcher.metadata_label_matcher.metadata_label_match_criteria
      dynamic "metadata_labels" {
        for_each = each.value.endpoint_matcher.metadata_label_matcher.metadata_labels != null ? each.value.endpoint_matcher.metadata_label_matcher.metadata_labels : []
        content {
          label_name  = metadata_labels.value.label_name
          label_value = metadata_labels.value.label_value
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "traffic_port_selector" {
    for_each = each.value.traffic_port_selector != null ? [each.value.traffic_port_selector] : []
    content {
      ports = traffic_port_selector.value.ports
    }
  }
}

