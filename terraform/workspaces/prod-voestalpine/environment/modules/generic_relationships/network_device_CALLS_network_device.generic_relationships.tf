resource "dynatrace_generic_relationships" "network_device_CALLS_network_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-auto-discovery 4.1.7"
  from_role        = "neighbor"
  from_type        = "network:device"
  to_role          = "default"
  to_type          = "network:device"
  type_of_relation = "CALLS"
  sources {
    source {
      source_type = "Logs"
    }
  }
}
