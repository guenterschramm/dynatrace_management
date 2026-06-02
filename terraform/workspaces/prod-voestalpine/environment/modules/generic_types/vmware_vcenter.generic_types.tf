resource "dynatrace_generic_types" "vmware_vcenter" {
  name         = "vmware:vcenter"
  enabled      = true
  created_by   = "com.dynatrace.vmware-integration 3.14.13"
  display_name = "VMware vCenter"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDY3OGM1ZDQ5LWEwNjctNWI4My1iZTE1LWU2ZTA4MDBkN2MyNb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "vcenter"
      id_pattern            = "vmware_vcenter_{vcenter.address}"
      instance_name_pattern = "{vcenter.address}"
      attributes {
        attribute {
          key     = "vcenter"
          pattern = "{vcenter.address}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      icon_pattern          = "vcenter"
      id_pattern            = "vmware_vcenter_{device.address}"
      instance_name_pattern = "{device.address}"
      attributes {
        attribute {
          key     = "vcenter"
          pattern = "{device.address}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(vmware.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
