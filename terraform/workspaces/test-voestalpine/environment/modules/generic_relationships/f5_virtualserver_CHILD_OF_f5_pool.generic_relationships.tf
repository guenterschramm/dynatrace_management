resource "dynatrace_generic_relationships" "f5_virtualserver_CHILD_OF_f5_pool" {
  enabled          = true
  created_by       = "com.dynatrace.extension.f5.bigip 3.0.6"
  from_type        = "f5:virtualserver"
  to_type          = "f5:pool"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.f5.bigip.)"
      source_type = "Metrics"
    }
  }
}
