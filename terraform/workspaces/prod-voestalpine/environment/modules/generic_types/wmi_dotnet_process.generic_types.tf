resource "dynatrace_generic_types" "wmi_dotnet_process" {
  name         = "wmi:dotnet_process"
  enabled      = true
  created_by   = "com.dynatrace.extension.wmi.dotnet 1.2.8"
  display_name = ".NET Process"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDExZTYzODFjLWYxYWMtNWYyMC1iYWY0LTU2MzUxMjM1NWU1NL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "dotnet"
      id_pattern            = "wmi_dotnet_process_{dt.entity.host}_{dotnet_name}"
      instance_name_pattern = "{dotnet_name} (.NET)"
      attributes {
        attribute {
          display_name = "Process ID"
          key          = "dotnet_PID"
          pattern      = "{dt.process.pid}"
        }
        attribute {
          display_name = "Process ID"
          key          = "dotnet_processid"
          pattern      = "{dotnet.processid}"
        }
        attribute {
          display_name = "Related process"
          key          = "dotnet_PGI"
          pattern      = "{process_group_instance}"
        }
        attribute {
          display_name = "Security context"
          key          = "dt.security_context"
          pattern      = "{dt.security.context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "host.name"
        }
        required_dimension {
          key           = "dt.entity.host"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "dotnet_name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(dotnet)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "dotnet"
      id_pattern            = "wmi_dotnet_process_{device.name}_{dotnet_name}"
      instance_name_pattern = "{dotnet_name} (.NET Remote)"
      attributes {
        attribute {
          display_name = "Process ID"
          key          = "dotnet_PID"
          pattern      = "{dt.process.pid}"
        }
        attribute {
          display_name = "Process ID"
          key          = "dotnet_PGI"
          pattern      = "{process_group_instance}"
        }
        attribute {
          display_name = "Security context"
          key          = "dt.security_context"
          pattern      = "{dt.security.context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "device.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "dotnet_name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(dotnet)"
          source_type = "Metrics"
        }
      }
    }
  }
}
