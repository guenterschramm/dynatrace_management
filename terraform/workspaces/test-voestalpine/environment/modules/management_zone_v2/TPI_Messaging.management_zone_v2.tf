resource "dynatrace_management_zone_v2" "TPI_Messaging" {
  name = "TPI_Messaging"
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
            string_value   = "lb-MuSI-default-"
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
            case_sensitive = false
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "TPI_Messaging"
          }
        }
      }
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(\"rabbitmq:vhost\")"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(\"rabbitmq:queue\")"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(\"rabbitmq:node\")"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(\"rabbitmq:cluster\")"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(\"tibco:topic\")"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(\"tibco:queue\")"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(\"tibco:broker\")"
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
            string_value   = "TPI_Messaging"
          }
        }
      }
    }
  }
}
