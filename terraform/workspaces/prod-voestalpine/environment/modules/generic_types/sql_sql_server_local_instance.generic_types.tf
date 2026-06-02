resource "dynatrace_generic_types" "sql_sql_server_local_instance" {
  name         = "sql:sql_server_local_instance"
  enabled      = true
  created_by   = "com.dynatrace.extension.sql-server.wmi 1.3.0"
  display_name = "SQL Server Local Instance"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDlhOWFiNGFhLWNkZjYtNWIzZC05ZWE3LWE5NWY0NDdjODJkYb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "sql-microsoft"
      id_pattern            = "sql_server_local_instance_{dt.entity.host}"
      instance_name_pattern = "SQL Server ({host.name})"
      role                  = "default"
      attributes {
        attribute {
          key     = "host_id"
          pattern = "{dt.entity.host}"
        }
        attribute {
          key     = "device"
          pattern = "{device}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "host.name"
        }
      }
      sources {
        source {
          condition   = "$prefix(sql-server.local)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "sql-microsoft"
      id_pattern            = "sql_server_local_instance_{device.name}"
      instance_name_pattern = "SQL Server ({device.name})"
      role                  = "default"
      attributes {
        attribute {
          key     = "device"
          pattern = "{device}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(sql-server.local)"
          source_type = "Metrics"
        }
      }
    }
  }
}
