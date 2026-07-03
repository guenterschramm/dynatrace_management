resource "dynatrace_generic_relationships" "f5_gtm_wip_CALLS_f5_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.f5.bigip 3.0.6"
  from_type        = "f5:gtm:wip"
  to_type          = "f5:instance"
  type_of_relation = "CALLS"
  sources {
    source {
      condition   = "$prefix(com.dynatrace.extension.f5.bigip.gtm.wip.)"
      source_type = "Metrics"
    }
  }
}
