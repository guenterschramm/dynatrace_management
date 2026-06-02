resource "dynatrace_service_naming" "DKI-Netty_Renaming" {
  name    = "DKI - Netty Renaming"
  enabled = true
  format  = "{ProcessGroup:KubernetesNamespace} - {ProcessGroup:KubernetesBasePodName}"
  conditions {
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
      key {
        type      = "STATIC"
        attribute = "SERVICE_WEB_CONTEXT_ROOT"
      }
      string {
        # case_sensitive = false
        # negate         = false
        operator         = "EXISTS"
      }
    }
  }
}
