resource "dynatrace_generic_types" "vmware_host" {
  name         = "vmware:host"
  enabled      = true
  created_by   = "com.dynatrace.vmware-integration 3.14.13"
  display_name = "VMware Host"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGM1Zjk2NmVkLWM1N2UtNTc5NC04ZDBlLTk1OTdkOTJhNGM0ZL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "host"
      id_pattern            = "vmware_host_{device.address}_{cluster.id}_{host.id}_{host.name}"
      instance_name_pattern = "{host.name}"
      attributes {
        attribute {
          display_name = "vCenter"
          key          = "vcenter"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "Host ID"
          key          = "host_id"
          pattern      = "{host.id}"
        }
        attribute {
          display_name = "Product Name"
          key          = "host_product_name"
          pattern      = "{host.product.name}"
        }
        attribute {
          display_name = "Product Version"
          key          = "host_product_version"
          pattern      = "{host.product.version}"
        }
        attribute {
          display_name = "Hardware Model"
          key          = "host_hardware_model"
          pattern      = "{host.hardware.model}"
        }
        attribute {
          display_name = "Hardware Vendor"
          key          = "host_hardware_vendor"
          pattern      = "{host.hardware.vendor}"
        }
        attribute {
          display_name = "In Maintenance?"
          key          = "host_in_maintenance"
          pattern      = "{host.in_maintenance}"
        }
        attribute {
          display_name = "Connected State"
          key          = "host_connected_state"
          pattern      = "{host.connected.state}"
        }
        attribute {
          display_name = "Powered State"
          key          = "host_power_state"
          pattern      = "{host.powered.state}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(vmware.host.availability)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "host"
      id_pattern            = "vmware_host_{device.address}_{cluster.id}_{host.id}_{host.name}"
      instance_name_pattern = "{host.name}"
      attributes {
        attribute {
          display_name = "vCenter"
          key          = "vcenter"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "Host ID"
          key          = "host_id"
          pattern      = "{host.id}"
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
    rule {
      icon_pattern          = "host"
      id_pattern            = "vmware_host_{vcenter.address}_{cluster.id}_{host.id}_{host.name}"
      instance_name_pattern = "{host.name}"
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
