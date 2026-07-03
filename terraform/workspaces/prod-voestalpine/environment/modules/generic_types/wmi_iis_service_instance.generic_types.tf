resource "dynatrace_generic_types" "wmi_iis_service_instance" {
  name         = "wmi:iis_service_instance"
  enabled      = true
  created_by   = "com.dynatrace.extension.wmi.iis 1.2.6"
  display_name = "IIS Service"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDQ1ZjE2YWMyLWNhNjgtNTAyNy05OGJmLTBhNjNjNDY2NjBkZr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "webserver"
      id_pattern            = "wmi_iis_service_instance_{dt.entity.host}"
      instance_name_pattern = "IIS Service on {host.name}"
      role                  = "default"
      attributes {
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
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
      }
      sources {
        source {
          condition   = "$prefix(iis)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "webserver"
      id_pattern            = "wmi_iis_service_instance_{device.name}"
      instance_name_pattern = "IIS Service on {device.name}"
      role                  = "default"
      attributes {
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "device.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(iis)"
          source_type = "Metrics"
        }
      }
    }
  }
}
