resource "dynatrace_generic_relationships" "wmi_iis_service_app_pool_RUNS_ON_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.wmi.iis 2.0.1"
  from_type        = "wmi:iis_service_app_pool"
  to_type          = "host"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(iis)"
      source_type = "Metrics"
    }
  }
}
