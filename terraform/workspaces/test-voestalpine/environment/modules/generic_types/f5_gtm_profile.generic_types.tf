resource "dynatrace_generic_types" "f5_gtm_profile" {
  name         = "f5:gtm:profile"
  enabled      = true
  created_by   = "com.dynatrace.extension.f5.bigip 3.0.6"
  display_name = "DNS Profile"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDNjMjYwYTE1LTBhYTUtNWFhZS05YzQyLWI3NzY3MTJkNGI0Mr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "traffic-manager"
      id_pattern            = "f5_gtm_profile_{profile.name}_{instance.name}"
      instance_name_pattern = "{profile.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Last action"
          key          = "LastAction"
          pattern      = "{profile.last_action}"
        }
        attribute {
          display_name = "Express enabled"
          key          = "ExpressEnabled"
          pattern      = "{profile.express_enabled}"
        }
        attribute {
          display_name = "Security enabled"
          key          = "SecurityEnabled"
          pattern      = "{profile.security_enabled}"
        }
        attribute {
          display_name = "Cache enabled"
          key          = "CacheEnabled"
          pattern      = "{profile.cache_enabled}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "profile.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "instance.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$eq(com.dynatrace.extension.f5.bigip.gtm.profile.state)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "traffic-manager"
      id_pattern            = "f5_gtm_profile_{profile.name}_{instance.name}"
      instance_name_pattern = "{profile.name}"
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
          key           = "profile.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "instance.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.gtm.profile)"
          source_type = "Metrics"
        }
      }
    }
  }
}
