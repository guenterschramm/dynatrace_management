resource "dynatrace_generic_relationships" "fortinet_fortigate_SAME_AS_network_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.fortigate 2.0.2"
  from_type        = "fortinet:fortigate"
  to_type          = "network:device"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(fortigate)"
      source_type = "Metrics"
    }
  }
}
