resource "dynatrace_metric_metadata" "APM_connectivity_licenses" {
  description        = "The total connectivity session licenses in the system"
  display_name       = "APM connectivity licenses"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.apm.total_licenses"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
