resource "dynatrace_generic_relationships" "cisco_cc_interface_RUNS_ON_cisco_cc_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.cisco-cc 2.2.1"
  from_type        = "cisco_cc:interface"
  to_type          = "cisco_cc:device"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(cisco.cc.interface.)"
      source_type = "Metrics"
    }
  }
}
