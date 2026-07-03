resource "dynatrace_generic_types" "f5_gtm_pool" {
  name         = "f5:gtm:pool"
  enabled      = true
  created_by   = "com.dynatrace.extension.f5.bigip 3.0.6"
  display_name = "DNS Pool"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDFmNWZkOTZlLWM3NjMtNTNlMS1hY2FiLWQ4ZTNjYTZmODhjYr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "dns-private-zones"
      id_pattern            = "f5_gtm_pool_{pool.name}_{pool.type}"
      instance_name_pattern = "{pool.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Name"
          key          = "Name"
          pattern      = "{pool.name}"
        }
        attribute {
          display_name = "Type"
          key          = "Type"
          pattern      = "{pool.type}"
        }
        attribute {
          display_name = "TTL"
          key          = "TTL"
          pattern      = "{pool.ttl}"
        }
        attribute {
          display_name = "Load balance mode"
          key          = "LbMode"
          pattern      = "{pool.lb_mode}"
        }
        attribute {
          display_name = "Alternate load balance mode"
          key          = "LbAlternate"
          pattern      = "{pool.lb_alternate}"
        }
        attribute {
          display_name = "Fallaback load balance mode"
          key          = "LbFallback"
          pattern      = "{pool.lb_fallback}"
        }
        attribute {
          display_name = "Fallback IP"
          key          = "FallbackIp"
          pattern      = "{pool.fallback_ip}"
        }
        attribute {
          display_name = "State"
          key          = "State"
          pattern      = "{pool.available}"
        }
        attribute {
          display_name = "Enabled"
          key          = "Enabled"
          pattern      = "{pool.enabled}"
        }
        attribute {
          display_name = "State detail"
          key          = "StateDetail"
          pattern      = "{pool.state_detail}"
        }
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
          key           = "pool.type"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$eq(com.dynatrace.extension.f5.bigip.gtm.pool.state)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "dns-private-zones"
      id_pattern            = "f5_gtm_pool_{pool.name}_{pool.type}"
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
          key           = "pool.type"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.gtm.pool.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$eq(com.dynatrace.extension.f5.bigip.gtm.wip.pool_link)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.gtm.pool_member.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
