resource "dynatrace_generic_relationships" "network_interface_CHILD_OF_network_port_3" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-auto-discovery 4.1.5"
  from_role        = "default"
  from_type        = "network:interface"
  to_role          = "default"
  to_type          = "network:port"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      source_type = "Logs"
    }
  }
}
