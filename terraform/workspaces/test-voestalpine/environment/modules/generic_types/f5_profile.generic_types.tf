resource "dynatrace_generic_types" "f5_profile" {
  name         = "f5:profile"
  enabled      = true
  created_by   = "com.dynatrace.extension.f5.bigip 3.0.6"
  display_name = "LTM Profile"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGQxYmIwMGRmLWYwOGMtNTY5Ny05Yjc2LThjYTNkMTYyZWEyM77vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "traffic-manager"
      id_pattern            = "f5_profile_{instance.name}_{profile.type}_{profile.name}"
      instance_name_pattern = "{profile.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Name"
          key          = "Name"
          pattern      = "{profile.name}"
        }
        attribute {
          display_name = "Type"
          key          = "ProfileType"
          pattern      = "{profile.type}"
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
          key           = "profile.type"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "instance.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.profile)"
          source_type = "Metrics"
        }
      }
    }
  }
}
