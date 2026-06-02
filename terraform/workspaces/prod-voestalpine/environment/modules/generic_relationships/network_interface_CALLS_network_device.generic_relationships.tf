resource "dynatrace_generic_relationships" "network_interface_CALLS_network_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-auto-discovery 4.1.5"
  from_type        = "network_interface"
  to_role          = "default"
  to_type          = "network:device"
  type_of_relation = "CALLS"
  sources {
    source {
      source_type = "Logs"
    }
  }
}
