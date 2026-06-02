resource "dynatrace_autotag_v2" "Webapplication" {
  name                          = "Webapplication"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{WebApplication:Name}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type = "APPLICATION"
        conditions {
          condition {
            enum_value = "CUSTOM"
            key        = "WEB_APPLICATION_TYPE"
            operator   = "EQUALS"
          }
        }
      }
    }
  }
}
