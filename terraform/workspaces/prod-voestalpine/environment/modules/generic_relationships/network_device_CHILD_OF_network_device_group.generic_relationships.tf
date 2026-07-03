resource "dynatrace_generic_relationships" "network_device_CHILD_OF_network_device_group" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-auto-discovery 4.1.7"
  from_type        = "network:device"
  to_type          = "network:device_group"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      source_type = "Logs"
    }
  }
}
