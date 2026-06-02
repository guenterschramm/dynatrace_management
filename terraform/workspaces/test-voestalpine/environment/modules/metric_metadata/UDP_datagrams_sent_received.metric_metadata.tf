resource "dynatrace_metric_metadata" "UDP_datagrams_sent_received" {
  description  = "Total number of UDP datagrams sent + received"
  display_name = "UDP datagrams sent + received"
  metric_id    = "metric-func:com.dynatrace.extension.snmp-generic-device.udp.hc.total"
  unit         = "Count"
}
