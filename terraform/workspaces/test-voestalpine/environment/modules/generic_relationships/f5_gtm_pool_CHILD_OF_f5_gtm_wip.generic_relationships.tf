resource "dynatrace_generic_relationships" "f5_gtm_pool_CHILD_OF_f5_gtm_wip" {
  enabled          = true
  created_by       = "com.dynatrace.extension.f5.bigip 3.0.6"
  from_type        = "f5:gtm:pool"
  to_type          = "f5:gtm:wip"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$eq(com.dynatrace.extension.f5.bigip.gtm.wip.pool_link)"
      source_type = "Metrics"
    }
  }
}
