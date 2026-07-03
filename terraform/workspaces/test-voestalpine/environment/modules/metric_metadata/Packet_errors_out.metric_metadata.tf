resource "dynatrace_metric_metadata" "Packet_errors_out" {
  description        = "The total outgoing packet errors for the system."
  display_name       = "Packet errors out"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.outErrorRate"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
