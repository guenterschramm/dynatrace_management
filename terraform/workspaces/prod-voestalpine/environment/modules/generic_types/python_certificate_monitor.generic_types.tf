resource "dynatrace_generic_types" "python_certificate_monitor" {
  name         = "python:certificate_monitor"
  enabled      = true
  created_by   = "com.dynatrace.custom.python-certificate-monitor 1.10.26"
  display_name = "Certificate monitor"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDIxZTI2MTViLTQxNTEtNTQ4OC04ZGIzLTY5ZmUxNmYzNzFhOL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "digital-business-analytics-and-automation"
      id_pattern            = "python_certificate_monitor_{dt.entity.host}"
      instance_name_pattern = "Certificate monitor on {host.name}"
      role                  = "Default"
      attributes {
        attribute {
          display_name = "Host"
          key          = "host_att"
          pattern      = "{dt.entity.host}"
        }
        attribute {
          key     = "monitoring_config"
          pattern = "{monitoring_config}"
        }
        attribute {
          key     = "source"
          pattern = "{source}"
        }
        attribute {
          display_name = "Security context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(certificate.monitor)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "digital-business-analytics-and-automation"
      id_pattern            = "python_certificate_monitor_{monitoring_config}"
      instance_name_pattern = "ActiveGate certificate monitor ({monitoring_config})"
      role                  = "Default"
      attributes {
        attribute {
          key     = "monitoring_config"
          pattern = "{monitoring_config}"
        }
        attribute {
          key     = "source"
          pattern = "{source}"
        }
        attribute {
          display_name = "Security context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "source"
          value_pattern = "$eq(Domain)"
        }
      }
      sources {
        source {
          condition   = "$prefix(certificate.monitor)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "digital-business-analytics-and-automation"
      id_pattern            = "python_certificate_monitor_{monitoring_config}"
      instance_name_pattern = "External certificate monitor ({monitoring_config})"
      role                  = "Default"
      attributes {
        attribute {
          key     = "monitoring_config"
          pattern = "{monitoring_config}"
        }
        attribute {
          key     = "source"
          pattern = "{source}"
        }
        attribute {
          display_name = "Security context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "source"
          value_pattern = "$eq(External)"
        }
      }
      sources {
        source {
          condition   = "$prefix(certificate.monitor)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "digital-business-analytics-and-automation"
      id_pattern            = "python_certificate_monitor_{dt.entity.host}"
      instance_name_pattern = "Certificate monitor on {host.name}"
      role                  = "Default"
      attributes {
        attribute {
          display_name = "Security context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "dt.extension.name"
          value_pattern = "$eq(python_certificate_monitor)"
        }
      }
      sources {
        source {
          condition   = "$prefix(certificate.monitor)"
          source_type = "Metrics"
        }
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
