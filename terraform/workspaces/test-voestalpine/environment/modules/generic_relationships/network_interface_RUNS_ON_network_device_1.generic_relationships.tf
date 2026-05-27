resource "dynatrace_generic_relationships" "network_interface_RUNS_ON_network_device_1" {
  enabled          = true
  created_by       = "com.dynatrace.extension.snmp-auto-discovery 4.1.5"
  from_type        = "network:interface"
  to_type          = "network:device"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.network_device.if)"
      source_type = "Metrics"
    }
  }
}
