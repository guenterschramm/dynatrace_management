resource "dynatrace_generic_relationships" "f5_pool_member_CALLS_f5_pool" {
  enabled          = true
  created_by       = "com.dynatrace.extension.f5.bigip 3.0.6"
  from_type        = "f5:pool:member"
  to_type          = "f5:pool"
  type_of_relation = "CALLS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.f5.bigip.)"
      source_type = "Metrics"
    }
  }
}
