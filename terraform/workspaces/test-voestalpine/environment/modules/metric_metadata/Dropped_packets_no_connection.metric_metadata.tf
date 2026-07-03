resource "dynatrace_metric_metadata" "Dropped_packets_no_connection" {
  description        = "The packets that are not connection requests and are destined for a virtual server that has no connection for the client address."
  display_name       = "Dropped packets (no connection)"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.virtServerNonSynDeny"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
