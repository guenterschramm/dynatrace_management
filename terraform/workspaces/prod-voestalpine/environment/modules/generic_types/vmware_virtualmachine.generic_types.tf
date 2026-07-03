resource "dynatrace_generic_types" "vmware_virtualmachine" {
  name         = "vmware:virtualmachine"
  enabled      = true
  created_by   = "com.dynatrace.vmware-integration 3.16.2"
  display_name = "VMware VM"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDg0NzhhOWUyLTQ4MjUtNTBhNS05MjkyLTIwZmY5Nzk3NGNlM77vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "vm-vmware"
      id_pattern            = "vmware_vm_{vcenter.address}_{vm.id}_{vm.name}"
      instance_name_pattern = "{vm.name}"
      required_dimensions {
        required_dimension {
          key           = "vm.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "vcenter.address"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "vm.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      icon_pattern          = "vm-vmware"
      id_pattern            = "vmware_vm_{device.address}_{vm.id}_{vm.name}"
      instance_name_pattern = "{vm.name}"
      attributes {
        attribute {
          display_name = "vCenter"
          key          = "vcenter"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "ID"
          key          = "vm_id"
          pattern      = "{vm.id}"
        }
        attribute {
          display_name = "Name"
          key          = "vm_name"
          pattern      = "{vm.name}"
        }
        attribute {
          display_name = "DNS Name"
          key          = "vm_dns_name"
          pattern      = "{vm.name.dns}"
        }
        attribute {
          display_name = "DNS Name"
          key          = "vm_power_state"
          pattern      = "{vm.power.state}"
        }
        attribute {
          display_name = "DNS Name"
          key          = "vm_connection_state"
          pattern      = "{vm.connection.state}"
        }
        attribute {
          display_name = "IP Address"
          key          = "vm_ip_address"
          pattern      = "{vm.ip}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "vm.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "vm.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(vmware.vm.availability)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "vm-vmware"
      id_pattern            = "vmware_vm_{device.address}_{vm.id}_{vm.name}"
      instance_name_pattern = "{vm.name}"
      attributes {
        attribute {
          display_name = "vCenter"
          key          = "vcenter"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "ID"
          key          = "vm_id"
          pattern      = "{vm.id}"
        }
        attribute {
          display_name = "Name"
          key          = "vm_name"
          pattern      = "{vm.name}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "vm.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "vm.name"
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
