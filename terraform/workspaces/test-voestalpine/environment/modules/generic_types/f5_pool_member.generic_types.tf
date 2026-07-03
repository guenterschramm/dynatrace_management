resource "dynatrace_generic_types" "f5_pool_member" {
  name         = "f5:pool:member"
  enabled      = true
  created_by   = "com.dynatrace.extension.f5.bigip 3.0.6"
  display_name = "LTM Pool Member"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGNhM2QyYjU2LTY4YzUtNWQ3My04YzJmLWZlNjY5Mzc5YmI4Yb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "applicationserver"
      id_pattern            = "f5_poolmember_{pool_member.addr}_{pool_member.port}"
      instance_name_pattern = "{pool_member.name}:{pool_member.port}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Pool Name"
          key          = "PoolName"
          pattern      = "{pool.name}"
        }
        attribute {
          display_name = "Address"
          key          = "dt.ip_addresses"
          pattern      = "{pool_member.addr}"
        }
        attribute {
          display_name = "Port"
          key          = "dt.listen_ports"
          pattern      = "{pool_member.port}"
        }
        attribute {
          display_name = "Ratio"
          key          = "PoolMemberRatio"
          pattern      = "{pool_member.ratio}"
        }
        attribute {
          display_name = "Weight"
          key          = "PoolMemberWeight"
          pattern      = "{pool_member.weight}"
        }
        attribute {
          display_name = "Priority"
          key          = "Priority"
          pattern      = "{pool_member.priority}"
        }
        attribute {
          display_name = "Dynamic Ratio"
          key          = "DynamicRatio"
          pattern      = "{pool_member.dynamicratio}"
        }
        attribute {
          display_name = "Monitor Status"
          key          = "MonitorStatus"
          pattern      = "{pool_member.monitor_status}"
        }
        attribute {
          display_name = "Name"
          key          = "Name"
          pattern      = "{pool_member.name}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "pool_member.name"
        }
        required_dimension {
          key = "pool_member.priority"
        }
        required_dimension {
          key           = "pool_member.port"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "pool_member.addr"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.pool_member.)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "applicationserver"
      id_pattern            = "f5_poolmember_{pool_member.addr}_{pool_member.port}"
      instance_name_pattern = "{pool_member.name}:{pool_member.port}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Pool Member Availability State"
          key          = "AvailabilityState"
          pattern      = "{pool_member.availstate}"
        }
        attribute {
          display_name = "Pool Member Enabeld State"
          key          = "EnabledState"
          pattern      = "{pool_member.enablestate}"
        }
        attribute {
          display_name = "Pool Member State Detail"
          key          = "StateDetail"
          pattern      = "{pool_member.statedetail}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "pool_member.name"
        }
        required_dimension {
          key = "pool_member.statedetail"
        }
        required_dimension {
          key           = "pool_member.port"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "pool_member.addr"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.pool_member.)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "applicationserver"
      id_pattern            = "f5_poolmember_{pool_member.addr}_{pool_member.port}"
      instance_name_pattern = "{pool_member.name}:{pool_member.port}"
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
          key           = "pool_member.port"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "pool_member.addr"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "pool_member.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.pool_member.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
