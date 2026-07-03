resource "dynatrace_generic_relationships" "network_device_SAME_AS_f5_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.f5.bigip 3.0.6"
  from_type        = "network:device"
  to_type          = "f5:instance"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.f5.bigip.)"
      source_type = "Metrics"
    }
  }
}
