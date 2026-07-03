resource "dynatrace_generic_relationships" "f5_gtm_virtualserver_CALLS_f5_gtm_pool" {
  enabled          = true
  created_by       = "com.dynatrace.extension.f5.bigip 3.0.6"
  from_type        = "f5:gtm:virtualserver"
  to_type          = "f5:gtm:pool"
  type_of_relation = "CALLS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.f5.bigip.gtm.pool_member)"
      source_type = "Metrics"
    }
  }
}
