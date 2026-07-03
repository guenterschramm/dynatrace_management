resource "dynatrace_generic_types" "network_interface_2" {
  name         = "network:interface"
  enabled      = true
  created_by   = "com.dynatrace.extension.cisco-cc 3.0.3"
  display_name = "Network interface"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGYyNzYzZjhkLWE5NTItNWU4YS05ZTc2LWZjMDY4ZWM1MzMzOb7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "network_interface_{mac.address}_{if.name}"
      instance_name_pattern = "{if.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Catalyst Center"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "mac.address"
        }
        required_dimension {
          key = "if.name"
        }
        required_dimension {
          key = "center"
        }
        required_dimension {
          key = "interface_id"
        }
        required_dimension {
          key = "device_id"
        }
      }
      sources {
        source {
          condition   = "$eq(cisco.cc.interface.admin_status)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "network_interface_{mac.address}_{if.name}"
      instance_name_pattern = "{if.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "mac.address"
        }
        required_dimension {
          key = "if.name"
        }
        required_dimension {
          key = "center"
        }
        required_dimension {
          key = "interface_id"
        }
        required_dimension {
          key = "device_id"
        }
      }
      sources {
        source {
          condition   = "$prefix(cisco.cc.interface.)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "network_interface_{mac.address}_{if.name}"
      instance_name_pattern = "{if.name}"
      attributes {
        attribute {
          display_name = "CC Device Name"
          key          = "device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "CC Device Family"
          key          = "family"
          pattern      = "{family}"
        }
        attribute {
          display_name = "CC Device Id"
          key          = "device_id"
          pattern      = "{device_id}"
        }
        attribute {
          display_name = "Interface Id"
          key          = "interface_id"
          pattern      = "{interface_id}"
        }
        attribute {
          display_name = "Port Name"
          key          = "if_port_name"
          pattern      = "{if_port_name}"
        }
        attribute {
          display_name = "Description"
          key          = "if_description"
          pattern      = "{if_description}"
        }
        attribute {
          display_name = "Speed"
          key          = "if_speed_text"
          pattern      = "{if_speed_text}"
        }
        attribute {
          display_name = "Admin Status"
          key          = "admin_status"
          pattern      = "{admin_status}"
        }
        attribute {
          display_name = "Operational Status"
          key          = "oper_status"
          pattern      = "{oper_status}"
        }
        attribute {
          display_name = "IP Address"
          key          = "if_ip_address"
          pattern      = "{if_ip_address}"
        }
        attribute {
          display_name = "Port Mode"
          key          = "if_port_mode"
          pattern      = "{if_port_mode}"
        }
        attribute {
          display_name = "OSPF Support"
          key          = "if_ospf_support"
          pattern      = "{if_ospf_support}"
        }
        attribute {
          display_name = "Native Vlan ID"
          key          = "if_native_vlan_id"
          pattern      = "{if_native_vlan_id}"
        }
        attribute {
          display_name = "Port Type"
          key          = "if_port_type"
          pattern      = "{if_port_type}"
        }
        attribute {
          display_name = "Interface Type"
          key          = "if_type"
          pattern      = "{if_type}"
        }
        attribute {
          display_name = "IP Mask"
          key          = "if_ip_mask"
          pattern      = "{if_ip_mask}"
        }
        attribute {
          display_name = "Interface Index"
          key          = "if_index"
          pattern      = "{if_index}"
        }
        attribute {
          display_name = "ISIS Support"
          key          = "if_isis_support"
          pattern      = "{if_isis_support}"
        }
        attribute {
          display_name = "Vlan ID"
          key          = "if_vlan_id"
          pattern      = "{if_vlan_id}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "mac.address"
        }
        required_dimension {
          key = "if.name"
        }
        required_dimension {
          key = "center"
        }
        required_dimension {
          key = "interface_id"
        }
        required_dimension {
          key = "device_id"
        }
        required_dimension {
          key           = "cisco.cc.eventtype"
          value_pattern = "$eq(cisco.cc.interface_discovery)"
        }
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(cisco-cc)"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
