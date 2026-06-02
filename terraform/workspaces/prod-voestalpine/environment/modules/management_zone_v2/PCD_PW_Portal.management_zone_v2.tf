resource "dynatrace_management_zone_v2" "PCD_PW_Portal" {
  name = "PCD_PW_Portal"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "HTTP_MONITOR"
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "HTTP_MONITOR_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "PW Portal"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "HTTP_MONITOR"
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "HTTP_MONITOR_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "PCD Portal"
          }
        }
      }
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type("python:certificate_monitor_certificate"),monitoring_config("PCD_PW_Portal SSL Certificate")
      EOT
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "WEB_APPLICATION"
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "WEB_APPLICATION_NAME"
            operator       = "CONTAINS"
            string_value   = "PW Portal"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "WEB_APPLICATION"
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "WEB_APPLICATION_NAME"
            operator       = "CONTAINS"
            string_value   = "PCD Portal"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "PCD_PW_Portal"
          }
        }
      }
    }
  }
}
