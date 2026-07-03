resource "dynatrace_generic_relationships" "f5_instance_SAME_AS_network_device" {
  enabled          = true
  created_by       = "com.dynatrace.extension.f5.bigip 3.0.6"
  from_type        = "f5:instance"
  to_type          = "network:device"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.f5.bigip.)"
      source_type = "Metrics"
    }
  }
}
