resource "dynatrace_generic_types" "wmi_iis_service_site" {
  name         = "wmi:iis_service_site"
  enabled      = true
  created_by   = "com.dynatrace.extension.wmi.iis 2.0.1"
  display_name = "IIS Site"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGE4ZjFjMDk0LTU2NmItNWZkZi04ZDQwLTY0MGZmNWE2MzViZL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "web"
      id_pattern            = "wmi_iis_site_{dt.entity.host}_{iis_site}"
      instance_name_pattern = "{iis_site} site on {host.name}"
      attributes {
        attribute {
          key     = "SiteHost"
          pattern = "{host.name}"
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
          key           = "iis_site"
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
      icon_pattern          = "web"
      id_pattern            = "wmi_iis_site_{device.name}_{iis_site}"
      instance_name_pattern = "{iis_site} site on {device.name}"
      attributes {
        attribute {
          key     = "SiteHost"
          pattern = "{host.name}"
        }
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "iis_site"
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
