resource "dynatrace_autotag_v2" "Application" {
  name                          = "Application"
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
            case_sensitive = true
            key            = "WEB_APPLICATION_NAME"
            operator       = "BEGINS_WITH"
            string_value   = "Webhosting"
          }
        }
      }
    }
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{ProcessGroup:DetectedName} - Webhosting Service"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        conditions {
          condition {
            case_sensitive = false
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "webhosting"
          }
        }
      }
    }
  }
}
