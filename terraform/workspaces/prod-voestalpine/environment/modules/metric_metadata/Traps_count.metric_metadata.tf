resource "dynatrace_metric_metadata" "Traps_count" {
  description  = "Number of traps received."
  display_name = "Traps count"
  metric_id    = "metric-com.dynatrace.extension.snmp-traps-generic.traps.count"
  unit         = "Count"
}
