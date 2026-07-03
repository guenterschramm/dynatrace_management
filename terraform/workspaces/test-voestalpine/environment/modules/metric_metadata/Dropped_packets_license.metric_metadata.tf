resource "dynatrace_metric_metadata" "Dropped_packets_license" {
  description        = "The packets which were dropped due to exceeding licensing limitations."
  display_name       = "Dropped packets (license)"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.licenseDeny"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
