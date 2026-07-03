resource "dynatrace_generic_relationships" "fortinet_fortigate_interface_SAME_AS_network_interface" {
  enabled          = true
  created_by       = "com.dynatrace.extension.fortigate 2.0.2"
  from_type        = "fortinet:fortigate_interface"
  to_type          = "network:interface"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(fortigate.interface)"
      source_type = "Metrics"
    }
  }
}
