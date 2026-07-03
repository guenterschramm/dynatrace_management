resource "dynatrace_generic_types" "vmware_cluster" {
  name         = "vmware:cluster"
  enabled      = true
  created_by   = "com.dynatrace.vmware-integration 3.16.2"
  display_name = "VMware Cluster"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGY4ZDFjODkzLTFmNmQtNTAzMS04ZmY0LTMyNTJhYjBjOGU5Yb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "cluster"
      id_pattern            = "vmware_cluster_{device.address}_{cluster.id}_{cluster.name}"
      instance_name_pattern = "{cluster.name}"
      attributes {
        attribute {
          display_name = "vCenter"
          key          = "vcenter"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "Cluster ID"
          key          = "cluster_id"
          pattern      = "{cluster.id}"
        }
        attribute {
          display_name = "Cluster Name"
          key          = "cluster_name"
          pattern      = "{cluster.name}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "cluster.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "cluster.id"
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
