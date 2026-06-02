resource "dynatrace_metric_metadata" "Overall_TCP_UDP_elements" {
  description  = "Total number of TCP segments and UDP datagrams sent and received"
  display_name = "Overall TCP & UDP elements"
  metric_id    = "metric-func:com.dynatrace.extension.snmp-generic-cisco-device.totaltraffic"
  unit         = "Count"
}
