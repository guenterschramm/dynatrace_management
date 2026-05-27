resource "dynatrace_generic_types" "snmp_com_dynatrace_extension_snmp_generic_device_interface" {
  name         = "snmp:com_dynatrace_extension_snmp_generic_device_interface"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-device 3.0.4"
  display_name = "Generic SNMP Device Network Interface"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDA0ZTZkMmZmLTcyNmUtNWYzOS04MDIzLTM5ZDNmNzZmYjNmZL7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "snmp_generic_device_if_{device.address}-{if.idx}"
      instance_name_pattern = "Network interface {if.descr} @ {device.address}"
      attributes {
        attribute {
          display_name = "Network device address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
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
          key           = "if.idx"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "if.descr"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.snmp-generic-device.if)"
          source_type = "Metrics"
        }
      }
    }
  }
}
