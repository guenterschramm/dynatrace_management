resource "dynatrace_generic_relationships" "network_interface_SAME_AS_cisco_cc_interface" {
  enabled          = true
  created_by       = "com.dynatrace.extension.cisco-cc 3.0.3"
  from_type        = "network:interface"
  to_type          = "cisco_cc:interface"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(cisco.cc.interface.)"
      source_type = "Metrics"
    }
  }
}
