resource "dynatrace_generic_types" "tibco_topic" {
  name         = "tibco:topic"
  enabled      = true
  created_by   = "com.dynatrace.extension.tibcoems 1.4.9"
  display_name = "Tibco EMS Topic"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGQ5ZTk5NGUyLWYzNjYtNTYzZS1iYTRiLTBiMDFiNzIyZTA1Mb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "tibco"
      id_pattern            = "{topic}-{dt.entity.host}-{server}"
      instance_name_pattern = "{topic}"
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
          key           = "topic"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "dt.entity.host"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "server"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(EMS2.Topic)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(EMS2.Durable)"
          source_type = "Metrics"
        }
      }
    }
  }
}
