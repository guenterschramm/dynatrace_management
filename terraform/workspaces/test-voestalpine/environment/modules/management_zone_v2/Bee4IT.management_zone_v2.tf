resource "dynatrace_management_zone_v2" "Bee4IT" {
  name = "Bee4IT"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = true
        attribute_conditions {
          condition {
            case_sensitive = true
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "Bee4IT"
          }
        }
      }
    }
  }
}
