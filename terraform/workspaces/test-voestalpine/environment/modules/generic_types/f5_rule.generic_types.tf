resource "dynatrace_generic_types" "f5_rule" {
  name         = "f5:rule"
  enabled      = true
  created_by   = "com.dynatrace.extension.f5.bigip 3.0.6"
  display_name = "iRule"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGMxNmM3MDBmLTA4ZTEtNTBkZC1hMjQxLWRjZDBhNTQzYjAwMb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "send-receive-traffic"
      id_pattern            = "f5_rule_{instance.name}_{rule.name}"
      instance_name_pattern = "{rule.name}"
      attributes {
        attribute {
          display_name = "Name"
          key          = "Name"
          pattern      = "{rule.name}"
        }
        attribute {
          display_name = "Event Type"
          key          = "EventType"
          pattern      = "{rule.event.type}"
        }
        attribute {
          display_name = "Priority"
          key          = "Priority"
          pattern      = "{rule.event.priority}"
        }
        attribute {
          display_name = "Module"
          key          = "Module"
          pattern      = "{module}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "rule.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "instance.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.rule.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
