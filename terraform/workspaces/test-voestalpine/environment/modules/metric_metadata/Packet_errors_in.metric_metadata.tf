resource "dynatrace_metric_metadata" "Packet_errors_in" {
  description        = "The total incoming packet errors for the system."
  display_name       = "Packet errors in"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.inErrorRate"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
