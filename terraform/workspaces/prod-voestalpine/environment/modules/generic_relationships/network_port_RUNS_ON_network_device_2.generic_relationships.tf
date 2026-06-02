resource "dynatrace_generic_relationships" "network_port_RUNS_ON_network_device_2" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-auto-discovery 4.1.5"
  from_role        = "neighbor"
  from_type        = "network:port"
  to_role          = "neighbor"
  to_type          = "network:device"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      source_type = "Logs"
    }
  }
}
