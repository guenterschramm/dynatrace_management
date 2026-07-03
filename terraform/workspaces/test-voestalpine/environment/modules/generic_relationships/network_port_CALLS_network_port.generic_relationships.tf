resource "dynatrace_generic_relationships" "network_port_CALLS_network_port" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-auto-discovery 4.1.7"
  from_role        = "neighbor"
  from_type        = "network:port"
  to_role          = "default"
  to_type          = "network:port"
  type_of_relation = "CALLS"
  sources {
    source {
      source_type = "Logs"
    }
  }
}
