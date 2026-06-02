resource "dynatrace_service_naming" "DKI-Nginx_renaming" {
  name    = "DKI - Nginx renaming"
  enabled = true
  format  = "{ProcessGroup:DetectedName}"
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
          type = "NGINX"
        }
      }
    }
    condition {
      key {
        type      = "STATIC"
        attribute = "SERVICE_TAGS"
      }
      tag {
        # negate = false
        operator = "EQUALS"
        value {
          context = "CONTEXTLESS"
          key     = "KubernetesNamespace"
          value   = "dki-qa"
        }
      }
    }
  }
}
