resource "dynatrace_metric_metadata" "TCP_segments_sent_received" {
  description  = "Total number of segments sent + received"
  display_name = "TCP segments sent + received"
  metric_id    = "metric-func:com.dynatrace.extension.snmp-generic-device.tcp.hc.total"
  unit         = "Count"
}
