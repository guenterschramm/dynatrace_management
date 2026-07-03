resource "dynatrace_generic_types" "f5_disk" {
  name         = "f5:disk"
  enabled      = true
  created_by   = "com.dynatrace.extension.f5.bigip 3.0.6"
  display_name = "Disk"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDIzY2FlYTg0LThmNmYtNWEwNS05MmM3LTQyMzZmZmE0YTFhNr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "hdd-discdrive"
      id_pattern            = "f5_disk_{instance.name}_{disk.name}"
      instance_name_pattern = "{disk.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Name"
          key          = "Name"
          pattern      = "{disk.name}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "disk.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "instance.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.sys.host.disk)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(func:com.dynatrace.extension.f5.bigip.sys.host.disk)"
          source_type = "Metrics"
        }
      }
    }
  }
}
