variable "network_services_endpoint_policies" {
  description = <<EOT
Map of network_services_endpoint_policies, attributes below
Required:
    - name
    - type
    - endpoint_matcher (block):
        - metadata_label_matcher (required, block):
            - metadata_label_match_criteria (required)
            - metadata_labels (optional, block):
                - label_name (required)
                - label_value (required)
Optional:
    - authorization_policy
    - client_tls_policy
    - deletion_policy
    - description
    - labels
    - project
    - server_tls_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - traffic_port_selector (block):
        - ports (required)
EOT

  type = map(object({
    name                 = string
    type                 = string
    authorization_policy = optional(string)
    client_tls_policy    = optional(string)
    deletion_policy      = optional(string)
    description          = optional(string)
    labels               = optional(map(string))
    project              = optional(string)
    server_tls_policy    = optional(string)
    endpoint_matcher = object({
      metadata_label_matcher = object({
        metadata_label_match_criteria = string
        metadata_labels = optional(list(object({
          label_name  = string
          label_value = string
        })))
      })
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    traffic_port_selector = optional(object({
      ports = list(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

