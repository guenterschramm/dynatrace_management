resource "dynatrace_generic_types" "f5_pool" {
  name         = "f5:pool"
  enabled      = true
  created_by   = "com.dynatrace.extension.f5.bigip 3.0.6"
  display_name = "LTM Pool"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDNiNmUxMjliLTYyOWEtNTdiZS04ZjQ5LTZhZGE2YTQ1NzE3Zr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "tree"
      id_pattern            = "f5_pool_{instance.name}_{pool.name}"
      instance_name_pattern = "{pool.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Name"
          key          = "Name"
          pattern      = "{pool.name}"
        }
        attribute {
          display_name = "LB Mode"
          key          = "LbMode"
          pattern      = "{pool.lbmode}"
        }
        attribute {
          display_name = "Active Member Count"
          key          = "ActiveMemberCount"
          pattern      = "{pool.activembrcount}"
        }
        attribute {
          display_name = "Monitor Rule"
          key          = "MonitorRule"
          pattern      = "{pool.monitorrule}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "pool.name"
        }
        required_dimension {
          key = "pool.lbmode"
        }
        required_dimension {
          key           = "instance.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.pool.)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "tree"
      id_pattern            = "f5_pool_{instance.name}_{pool.name}"
      instance_name_pattern = "{pool.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Pool Availability State"
          key          = "AvailabilityState"
          pattern      = "{pool.availstate}"
        }
        attribute {
          display_name = "Pool Enabled State"
          key          = "EnabledState"
          pattern      = "{pool.enablestate}"
        }
        attribute {
          display_name = "Pool State Details"
          key          = "StateDetail"
          pattern      = "{pool.statedetail}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "pool.name"
        }
        required_dimension {
          key = "pool.statedetail"
        }
        required_dimension {
          key           = "instance.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.pool.)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "tree"
      id_pattern            = "f5_pool_{instance.name}_{pool.name}"
      instance_name_pattern = "{pool.name}"
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
          key           = "pool.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "instance.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.pool.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.pool_member.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.virtualserver.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
