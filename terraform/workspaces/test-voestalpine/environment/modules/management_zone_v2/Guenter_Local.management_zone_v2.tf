resource "dynatrace_management_zone_v2" "Guenter_Local" {
  name = "Guenter_Local"
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
            string_value   = "my-tomcat"
          }
        }
      }
    }
  }
}
