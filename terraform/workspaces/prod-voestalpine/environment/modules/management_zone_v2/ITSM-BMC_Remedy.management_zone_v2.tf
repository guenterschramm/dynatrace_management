resource "dynatrace_management_zone_v2" "ITSM-BMC_Remedy" {
  name        = "ITSM - BMC Remedy"
  description = "BMC Remedy Production"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "WEB_APPLICATION"
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "WEB_APPLICATION_NAME"
            operator       = "EQUALS"
            string_value   = "Remedy Production"
          }
        }
      }
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type = "BROWSER_MONITOR"
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "BROWSER_MONITOR_NAME"
            operator       = "CONTAINS"
            string_value   = "ITSM"
          }
        }
      }
    }
  }
}
