resource "dynatrace_generic_types" "snmp_com_dynatrace_extension_snmp_generic_juniper_disk" {
  name         = "snmp:com_dynatrace_extension_snmp_generic_juniper_disk"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  display_name = "Juniper SNMP Device Disk"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGFlYWM1YjVlLWU0OGItNTkyMi05MmIxLTY1NWFkZjk5MDhhZb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "storage"
      id_pattern            = "snmp.generic.juniper.disk.{device.address}-{storage.index}"
      instance_name_pattern = "{storage.descr} on {device.address}"
      attributes {
        attribute {
          display_name = "Index"
          key          = "index"
          pattern      = "{storage.index}"
        }
        attribute {
          display_name = "Description"
          key          = "description"
          pattern      = "{storage.descr}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "storage.index"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "storage.descr"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.juniper.generic.device.storage)"
          source_type = "Metrics"
        }
      }
    }
  }
}
