resource "dynatrace_generic_types" "cisco_cc_interface" {
  name         = "cisco_cc:interface"
  enabled      = true
  created_by   = "com.dynatrace.extension.cisco-cc 3.0.3"
  display_name = "Catalyst Interface"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDkxOTlmZTUxLTZmNmQtNTVlMS05YzgyLWJlYjcyMTU0ZWM5Nb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "network-interfaces"
      id_pattern            = "cisco_cc_interface_{center}_{device_id}_{interface_id}"
      instance_name_pattern = "{interface}"
      attributes {
        attribute {
          display_name = "Center"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Device Name"
          key          = "device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Device Family"
          key          = "family"
          pattern      = "{family}"
        }
        attribute {
          display_name = "Device Id"
          key          = "device_id"
          pattern      = "{device_id}"
        }
        attribute {
          display_name = "Interface Name"
          key          = "interface"
          pattern      = "{interface}"
        }
        attribute {
          display_name = "Interface Id"
          key          = "interface_id"
          pattern      = "{interface_id}"
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
          display_name = "MAC Address"
          key          = "mac_address"
          pattern      = "{mac.address}"
        }
        attribute {
          display_name = "Interface Index"
          key          = "if_index"
          pattern      = "{if_index}"
        }
        attribute {
          display_name = "Chassis MAC"
          key          = "chassis_mac"
          pattern      = "{chassis.mac}"
        }
        attribute {
          display_name = "Site Id"
          key          = "site_id"
          pattern      = "{site_id}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "center"
        }
        required_dimension {
          key = "device_id"
        }
        required_dimension {
          key = "interface_id"
        }
        required_dimension {
          key = "interface"
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
      icon_pattern          = "network-interfaces"
      id_pattern            = "cisco_cc_interface_{center}_{device_id}_{interface_id}"
      instance_name_pattern = "{interface}"
      attributes {
        attribute {
          display_name = "Center"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Device Name"
          key          = "device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Device Family"
          key          = "family"
          pattern      = "{family}"
        }
        attribute {
          display_name = "Device Id"
          key          = "device_id"
          pattern      = "{device_id}"
        }
        attribute {
          display_name = "Interface Name"
          key          = "interface"
          pattern      = "{interface}"
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
          display_name = "Speed (Mbps)"
          key          = "if_speed"
          pattern      = "{if.speed}"
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
          display_name = "SNMP Admin Status"
          key          = "snmp_admin_status"
          pattern      = "{admin.status}"
        }
        attribute {
          display_name = "SNMP Operational Status"
          key          = "snmp_oper_status"
          pattern      = "{oper.status}"
        }
        attribute {
          display_name = "MAC Address"
          key          = "mac_address"
          pattern      = "{mac.address}"
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
        attribute {
          display_name = "Chassis MAC"
          key          = "chassis_mac"
          pattern      = "{chassis.mac}"
        }
        attribute {
          display_name = "Site Id"
          key          = "site_id"
          pattern      = "{site_id}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "cisco.cc.eventtype"
          value_pattern = "$eq(cisco.cc.interface_discovery)"
        }
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(cisco-cc)"
        }
        required_dimension {
          key = "center"
        }
        required_dimension {
          key = "device_id"
        }
        required_dimension {
          key = "interface_id"
        }
        required_dimension {
          key = "interface"
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
