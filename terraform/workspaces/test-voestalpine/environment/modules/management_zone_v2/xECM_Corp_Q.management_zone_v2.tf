resource "dynatrace_management_zone_v2" "xECM_Corp_Q" {
  name = "xECM_Corp_Q"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "xECM_Corp_Q"
          }
        }
      }
    }
  }
}
