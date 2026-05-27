resource "dynatrace_generic_relationships" "network_interface_CHILD_OF_network_port_1" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-auto-discovery 4.1.5"
  from_type        = "network:interface"
  to_type          = "network:port"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.network_device.if)"
      source_type = "Metrics"
    }
  }
}
