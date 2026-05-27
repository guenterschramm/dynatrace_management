resource "dynatrace_generic_types" "snmp_com_dynatrace_extension_snmp_generic_juniper_fru" {
  name         = "snmp:com_dynatrace_extension_snmp_generic_juniper_fru"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  display_name = "Juniper Device FRU"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDg2ZjcxNzY3LTdjZjAtNWI2Ny1iNzYyLWUxMmQ0NDM3MTA4Yb7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "snmp.generic.juniper.fru.{device.address}-{contents.index}.{l.one.index}.{l.two.index}.{l.three.index}"
      instance_name_pattern = "{fru.name} on {device.address}"
      attributes {
        attribute {
          display_name = "Name"
          key          = "name"
          pattern      = "{fru.name}"
        }
        attribute {
          display_name = "Type"
          key          = "type"
          pattern      = "{fru.type}"
        }
        attribute {
          display_name = "FRU Contents Index"
          key          = "content_index"
          pattern      = "{contents.index}"
        }
        attribute {
          display_name = "L1 Index"
          key          = "l_one_index"
          pattern      = "{l.one.index}"
        }
        attribute {
          display_name = "L2 Index"
          key          = "l_two_index"
          pattern      = "{l.two.index}"
        }
        attribute {
          display_name = "L3 Index"
          key          = "l_three_index"
          pattern      = "{l.three.index}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "fru.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "l.two.index"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "l.three.index"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "l.one.index"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "contents.index"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.juniper.generic.device.fru)"
          source_type = "Metrics"
        }
      }
    }
  }
}
