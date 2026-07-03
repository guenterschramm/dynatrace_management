resource "dynatrace_metric_metadata" "Dropped_packets" {
  description        = "The total dropped packets."
  display_name       = "Dropped packets"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.droppedPacketRate"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
