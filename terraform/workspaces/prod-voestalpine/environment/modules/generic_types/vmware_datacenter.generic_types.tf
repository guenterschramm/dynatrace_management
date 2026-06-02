resource "dynatrace_generic_types" "vmware_datacenter" {
  name         = "vmware:datacenter"
  enabled      = true
  created_by   = "com.dynatrace.vmware-integration 3.14.13"
  display_name = "VMware Datacenter"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGRjMDFiMTk3LTExNWUtNWUxZS05NGFhLTc4NjM1OGRjOTdlNL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "network"
      id_pattern            = "vmware_cluster_{device.address}_{datacenter.id}_{datacenter.name}"
      instance_name_pattern = "{datacenter.name}"
      attributes {
        attribute {
          display_name = "vCenter"
          key          = "vcenter"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "ID"
          key          = "datacenter_id"
          pattern      = "{datacenter.id}"
        }
        attribute {
          display_name = "Name"
          key          = "datacenter_name"
          pattern      = "{datacenter.name}"
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
