resource "dynatrace_generic_types" "vmware_disk" {
  name         = "vmware:disk"
  enabled      = true
  created_by   = "com.dynatrace.vmware-integration 3.16.2"
  display_name = "VMware Disks"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGYwOWNjZjlkLTFhNDktNTVkYi1iNDI4LTczMWQzMTdjZTY3N77vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "discanalytics"
      id_pattern            = "vmware_disk_{device.address}_{datastore.id}_{datastore.name}_{disk.id}"
      instance_name_pattern = "{disk.id}"
      required_dimensions {
        required_dimension {
          key           = "disk.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "datastore.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "datastore.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
      }
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
      required_dimensions {
        required_dimension {
          key           = "disk.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "cluster.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "host.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
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
