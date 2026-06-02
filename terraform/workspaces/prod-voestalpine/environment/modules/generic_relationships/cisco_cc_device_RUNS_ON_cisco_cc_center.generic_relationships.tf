resource "dynatrace_generic_relationships" "cisco_cc_device_RUNS_ON_cisco_cc_center" {
  enabled          = true
  created_by       = "com.dynatrace.extension.cisco-cc 2.2.1"
  from_type        = "cisco_cc:device"
  to_type          = "cisco_cc:center"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(cisco.cc.device.)"
      source_type = "Metrics"
    }
  }
}
