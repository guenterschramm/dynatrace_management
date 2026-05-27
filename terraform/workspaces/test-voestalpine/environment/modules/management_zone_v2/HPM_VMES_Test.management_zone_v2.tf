resource "dynatrace_management_zone_v2" "HPM_VMES_Test" {
  name = "HPM_VMES_Test"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type                 = "SERVICE"
        service_to_host_propagation = true
        service_to_pgpropagation    = true
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "SERVICE_DETECTED_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "metar"
          }
        }
      }
    }
  }
}
