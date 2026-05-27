resource "dynatrace_generic_relationships" "network_interface_RUNS_ON_network_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-auto-discovery 4.1.5"
  from_role        = "default"
  from_type        = "network:interface"
  to_role          = "default"
  to_type          = "network:device"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      source_type = "Logs"
    }
  }
}
