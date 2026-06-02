resource "dynatrace_service_naming" "DKI-Messaging_Service_Renaming" {
  name    = "DKI - Messaging Service Renaming"
  enabled = true
  format  = "{ProcessGroup:KubernetesNamespace} - {Service:DetectedName} - {ProcessGroup:KubernetesBasePodName}"
  conditions {
    condition {
      key {
        type      = "STATIC"
        attribute = "SERVICE_TYPE"
      }
      service_type {
        # negate = false
        operator = "EQUALS"
        value    = "MESSAGING_SERVICE"
      }
    }
    condition {
      key {
        type      = "STATIC"
        attribute = "SERVICE_TECHNOLOGY"
      }
      tech {
        # negate = false
        operator = "EQUALS"
        value {
          type = "NETTY"
        }
      }
    }
    condition {
      process_metadata {
        attribute   = "PROCESS_GROUP_PREDEFINED_METADATA"
        dynamic_key = "KUBERNETES_NAMESPACE"
      }
      string {
        # case_sensitive = false
        # negate         = false
        operator         = "EXISTS"
      }
    }
  }
}
