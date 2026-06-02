resource "dynatrace_autotag_v2" "KubernetesNamespace" {
  name                          = "KubernetesNamespace"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{ProcessGroup:KubernetesNamespace}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = false
        pg_to_service_propagation = true
        conditions {
          condition {
            key      = "CLOUD_APPLICATION_NAMESPACE_NAME"
            operator = "EXISTS"
          }
        }
      }
    }
  }
}
