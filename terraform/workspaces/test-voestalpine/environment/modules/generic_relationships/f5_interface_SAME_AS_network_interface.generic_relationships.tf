resource "dynatrace_generic_relationships" "f5_interface_SAME_AS_network_interface" {
  enabled          = true
  created_by       = "com.dynatrace.extension.f5.bigip 3.0.6"
  from_type        = "f5:interface"
  to_type          = "network:interface"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.f5.bigip.sys.interface)"
      source_type = "Metrics"
    }
  }
}
