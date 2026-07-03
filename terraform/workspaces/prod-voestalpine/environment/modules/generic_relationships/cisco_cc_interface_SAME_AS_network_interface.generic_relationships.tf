resource "dynatrace_generic_relationships" "cisco_cc_interface_SAME_AS_network_interface" {
  enabled          = true
  created_by       = "com.dynatrace.extension.cisco-cc 3.0.3"
  from_type        = "cisco_cc:interface"
  to_type          = "network:interface"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(cisco.cc.interface.)"
      source_type = "Metrics"
    }
  }
}
