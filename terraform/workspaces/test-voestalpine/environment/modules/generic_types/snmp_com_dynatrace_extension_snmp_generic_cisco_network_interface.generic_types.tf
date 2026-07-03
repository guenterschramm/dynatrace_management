resource "dynatrace_generic_types" "snmp_com_dynatrace_extension_snmp_generic_cisco_network_interface" {
  name         = "snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-cisco-device 4.0.9"
  display_name = "Generic SNMP Cisco Device Network Interface"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGY0NGQ3MmJjLTg5NTctNThjMi04Nzc3LWRjNjE1MTI1MjdjY77vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "snmp_generic_cisco_network_interface_{device.address}-{if.idx}"
      instance_name_pattern = "Cisco network interface {if.descr} @ {sys.name}"
      attributes {
        attribute {
          display_name = "Network device address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "Alias"
          key          = "alias"
          pattern      = "{if.alias}"
        }
        attribute {
          display_name = "PromiscuousMode"
          key          = "promiscuousMode"
          pattern      = "{if.promiscuousmode}"
        }
        attribute {
          display_name = "Interface Speed"
          key          = "speed"
          pattern      = "{if.speed}"
        }
        attribute {
          display_name = "Interface Speed (Mbps)"
          key          = "highspeed"
          pattern      = "{if.highspeed}"
        }
        attribute {
          display_name = "Interface Type"
          key          = "type"
          pattern      = "{if.type}"
        }
        attribute {
          display_name = "Operational Status"
          key          = "opStatus"
          pattern      = "{if.operstatus}"
        }
        attribute {
          display_name = "MTU"
          key          = "mtu"
          pattern      = "{if.mtu}"
        }
        attribute {
          display_name = "Description"
          key          = "description"
          pattern      = "{if.descr}"
        }
        attribute {
          display_name = "Admin Status"
          key          = "adminStatus"
          pattern      = "{if.adminstatus}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "if.descr"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "sys.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "if.idx"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.snmp-generic-cisco-device.if)"
          source_type = "Metrics"
        }
      }
    }
  }
}
