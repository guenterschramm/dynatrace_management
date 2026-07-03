resource "dynatrace_generic_relationships" "f5_pool_RUNS_ON_f5_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.f5.bigip 3.0.6"
  from_type        = "f5:pool"
  to_type          = "f5:instance"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.f5.bigip.)"
      source_type = "Metrics"
    }
  }
}
