resource "dynatrace_metric_metadata" "Overall_traffic_TCP_UDP_elements" {
  description  = "Total number of TCP segments and UDP datagrams sent + received"
  display_name = "Overall traffic TCP & UDP elements"
  metric_id    = "metric-func:com.dynatrace.extension.snmp-generic-device.totaltraffic"
  unit         = "Count"
}
