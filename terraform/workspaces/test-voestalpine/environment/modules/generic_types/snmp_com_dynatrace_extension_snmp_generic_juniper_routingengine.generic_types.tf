resource "dynatrace_generic_types" "snmp_com_dynatrace_extension_snmp_generic_juniper_routingengine" {
  name         = "snmp:com_dynatrace_extension_snmp_generic_juniper_routingengine"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  display_name = "Generic Juniper SNMP Device Routing Engine"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGY3NDY1ZWM1LWFhOTgtNTgzOS1iZDA2LTY2ODkzMzVhODNiMr7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "snmp.generic.juniper.routingengine.{device.address}-{routingengine.descr}"
      instance_name_pattern = "Juniper Routing Engine {routingengine.descr} @ {device.address}"
      attributes {
        attribute {
          display_name = "Routing Engine Name"
          key          = "routingengine_name"
          pattern      = "{routingengine.descr}"
        }
        attribute {
          display_name = "Routing Engine Installed Memory"
          key          = "routingengine_inmem"
          pattern      = "{routingengine.installed.memory}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "routingengine.descr"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.juniper.generic.routingengine)"
          source_type = "Metrics"
        }
      }
    }
  }
}
