resource "dynatrace_generic_types" "f5_gtm_wip" {
  name         = "f5:gtm:wip"
  enabled      = true
  created_by   = "com.dynatrace.extension.f5.bigip 3.0.6"
  display_name = "DNS Wide IP"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDgzNjdlN2E4LWRlMDQtNTZlZS1iODE3LTVhOGI2ZjEyMWQ1Mr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "dns-zones"
      id_pattern            = "f5_gtm_wip_{wip.name}_{wip.type}"
      instance_name_pattern = "{wip.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Name"
          key          = "Name"
          pattern      = "{wip.name}"
        }
        attribute {
          display_name = "Type"
          key          = "Type"
          pattern      = "{wip.type}"
        }
        attribute {
          display_name = "Load balance mode"
          key          = "LbMode"
          pattern      = "{wip.lb_mode}"
        }
        attribute {
          display_name = "Last resort pool"
          key          = "LastResortPool"
          pattern      = "{wip.last_resort}"
        }
        attribute {
          display_name = "State"
          key          = "State"
          pattern      = "{wip.available}"
        }
        attribute {
          display_name = "Enabled"
          key          = "Enabled"
          pattern      = "{wip.enabled}"
        }
        attribute {
          display_name = "State detail"
          key          = "StateDetail"
          pattern      = "{wip.state_detail}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "wip.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "wip.type"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$eq(com.dynatrace.extension.f5.bigip.gtm.wip.state)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "dns-zones"
      id_pattern            = "f5_gtm_wip_{wip.name}_{wip.type}"
      instance_name_pattern = "{wip.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "wip.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "wip.type"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.gtm.wip.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
