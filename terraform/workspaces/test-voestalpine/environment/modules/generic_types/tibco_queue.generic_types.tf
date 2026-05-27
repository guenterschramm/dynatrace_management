resource "dynatrace_generic_types" "tibco_queue" {
  name         = "tibco:queue"
  enabled      = true
  created_by   = "com.dynatrace.extension.tibcoems 2.0.2"
  display_name = "Tibco EMS Queue"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDM0NGY1ZTI0LTQxYTctNTc0Zi05ZmI3LWYxYmQwMTA1ZjkzZb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "tibco"
      id_pattern            = "{queue}-{dt.entity.host}-{server}"
      instance_name_pattern = "{queue}"
      attributes {
        attribute {
          display_name = "Server"
          key          = "server"
          pattern      = "{server}"
        }
        attribute {
          display_name = "Host"
          key          = "host"
          pattern      = "{host.name}"
        }
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "dt.entity.host"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "server"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "queue"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(EMS2.Queue)"
          source_type = "Metrics"
        }
      }
    }
  }
}
