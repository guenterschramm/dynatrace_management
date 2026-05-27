resource "dynatrace_generic_types" "snmp_com_dynatrace_extension_snmp_generic_juniper_installed_app" {
  name         = "snmp:com_dynatrace_extension_snmp_generic_juniper_installed_app"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  display_name = "Juniper SNMP Device Installed App"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDEyZGU3ZmVmLTUzZjgtNTM5Ny1hZWJhLTE3OGRhZjUyZGE5OL7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "snmp.generic.juniper.installed.app.{device.address}-{app.name}"
      instance_name_pattern = "{app.name} installed on {device.address}"
      attributes {
        attribute {
          display_name = "Name"
          key          = "name"
          pattern      = "{app.name}"
        }
        attribute {
          display_name = "Type"
          key          = "type"
          pattern      = "{app.type}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "app.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.juniper.generic.app.installed.entity)"
          source_type = "Metrics"
        }
      }
    }
  }
}
