resource "dynatrace_generic_types" "wmi_iis_service_app_pool" {
  name         = "wmi:iis_service_app_pool"
  enabled      = true
  created_by   = "com.dynatrace.extension.wmi.iis 2.0.1"
  display_name = "IIS App Pool"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDVkNzM5ZmY5LWE0YWMtNTQzMS05MzhjLWM4NTA5MjBjYTBmNb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "elastic-load"
      id_pattern            = "wmi_iis_app_pool_{dt.entity.host}_{iis_app_pool}"
      instance_name_pattern = "{iis_app_pool} App Pool on {host.name}"
      attributes {
        attribute {
          display_name = "App Pool State"
          key          = "AppPoolState"
          pattern      = "{app_pool_state}"
        }
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
          key           = "iis_app_pool"
          value_pattern = "$exists()"
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
      icon_pattern          = "elastic-load"
      id_pattern            = "wmi_iis_app_pool_{device.name}_{iis_app_pool}"
      instance_name_pattern = "{iis_app_pool} App Pool on {device.name}"
      attributes {
        attribute {
          display_name = "App Pool State"
          key          = "AppPoolState"
          pattern      = "{app_pool_state}"
        }
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "iis_app_pool"
          value_pattern = "$exists()"
        }
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
