resource "dynatrace_generic_types" "tibco_broker" {
  name         = "tibco:broker"
  enabled      = true
  created_by   = "com.dynatrace.extension.tibcoems 1.4.9"
  display_name = "Tibco EMS Broker"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDQxMjE0MDdmLTdlYTEtNTI1YS04YWQ3LTk2OGNjMmQ0ZTdmOL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "tibco"
      id_pattern            = "{dt.entity.host}-{instance}"
      instance_name_pattern = "{instance.name}"
      attributes {
        attribute {
          display_name = "Server"
          key          = "server"
          pattern      = "{instance}"
        }
        attribute {
          display_name = "Host"
          key          = "host"
          pattern      = "{host.name}"
        }
        attribute {
          display_name = "Process Group Instance"
          key          = "process_instance"
          pattern      = "{dt.entity.process_group_instance}"
        }
        attribute {
          display_name = "Version"
          key          = "version"
          pattern      = "{version}"
        }
        attribute {
          display_name = "Statistics"
          key          = "statistics"
          pattern      = "{statistics}"
        }
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "instance.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "dt.entity.host"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "instance"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$eq(EMS2.BrokerNodeStatus)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(EMS2.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
