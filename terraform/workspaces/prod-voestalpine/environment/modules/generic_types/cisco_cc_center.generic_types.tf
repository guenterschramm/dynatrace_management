resource "dynatrace_generic_types" "cisco_cc_center" {
  name         = "cisco_cc:center"
  enabled      = true
  created_by   = "com.dynatrace.extension.cisco-cc 2.2.1"
  display_name = "Catalyst Center"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDIzZGRhZTMzLWM4NzgtNTc2Ni04ZTdmLTFkMmM1ZTQxZTFkMr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "network"
      id_pattern            = "cisco_cc_center_{center}"
      instance_name_pattern = "{center}"
      attributes {
        attribute {
          display_name = "Name"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "center"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(cisco.cc.center.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(cisco.cc.site.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(cisco.cc.device.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(cisco.cc.interface.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(cisco.cc.client.)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "network"
      id_pattern            = "cisco_cc_center_{center}"
      instance_name_pattern = "{center}"
      attributes {
        attribute {
          display_name = "Name"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "cisco.cc.eventtype"
          value_pattern = "$eq(cisco.cc.issue)"
        }
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(cisco-cc)"
        }
        required_dimension {
          key = "center"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      icon_pattern          = "network"
      id_pattern            = "cisco_cc_center_{center}"
      instance_name_pattern = "{center}"
      attributes {
        attribute {
          display_name = "Name"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "cisco.cc.eventtype"
          value_pattern = "$eq(cisco.cc.event)"
        }
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(cisco-cc)"
        }
        required_dimension {
          key = "center"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
