resource "dynatrace_generic_types" "tibco_durable" {
  name         = "tibco:durable"
  enabled      = true
  created_by   = "com.dynatrace.extension.tibcoems 2.0.2"
  display_name = "Tibco EMS Durable"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDU0MDM4ZjU0LTcxYTctNWJjOS05ZTA0LTBiODNkZDVhMDMyML7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "tibco"
      id_pattern            = "{dt.entity.host}-{server}-{topic}-{durable}"
      instance_name_pattern = "{durable}"
      attributes {
        attribute {
          display_name = "Server"
          key          = "server"
          pattern      = "{instance}"
        }
        attribute {
          display_name = "User"
          key          = "user"
          pattern      = "{user}"
        }
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "durable"
          value_pattern = "$exists()"
        }
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
          condition   = "$prefix(EMS2.Durable)"
          source_type = "Metrics"
        }
      }
    }
  }
}
