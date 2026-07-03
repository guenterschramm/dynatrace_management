resource "dynatrace_generic_relationships" "network_interface_SAME_AS_f5_interface" {
  enabled          = true
  created_by       = "com.dynatrace.extension.f5.bigip 3.0.6"
  from_type        = "network:interface"
  to_type          = "f5:interface"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.f5.bigip.sys.interface)"
      source_type = "Metrics"
    }
  }
}
