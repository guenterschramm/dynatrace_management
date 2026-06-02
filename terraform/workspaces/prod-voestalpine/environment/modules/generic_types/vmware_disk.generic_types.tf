resource "dynatrace_generic_types" "vmware_disk" {
  name         = "vmware:disk"
  enabled      = true
  created_by   = "com.dynatrace.vmware-integration 3.14.13"
  display_name = "VMware Disks"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGYwOWNjZjlkLTFhNDktNTVkYi1iNDI4LTczMWQzMTdjZTY3N77vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "discanalytics"
      id_pattern            = "vmware_disk_{device.address}_{datastore.id}_{datastore.name}_{disk.id}"
      instance_name_pattern = "{disk.id}"
      sources {
        source {
          condition   = "$prefix(vmware.)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "discanalytics"
      id_pattern            = "vmware_disk_{device.address}_{cluster.id}_{host.id}_{disk.id}"
      instance_name_pattern = "{disk.id}"
      sources {
        source {
          condition   = "$prefix(vmware.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
