resource "dynatrace_management_zone_v2" "Webhosting_Service" {
  name = "Webhosting Service"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "HTTP_MONITOR"
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "HTTP_MONITOR_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "Webhosting"
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
            operator       = "BEGINS_WITH"
            string_value   = "Webhosting"
          }
        }
      }
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type("python:certificate_monitor_certificate"),monitoring_config("Webhosting SSL Certificate")
      EOT
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
            string_value   = "Webhosting"
          }
        }
      }
    }
  }
}
