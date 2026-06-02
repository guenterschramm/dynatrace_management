resource "dynatrace_metric_metadata" "Inbound_bandwidth_utilization" {
  description  = "Inbound bandwidth utilization on interface. Computed as sum of incoming traffic divided by interface speed. Presented as percentage."
  display_name = "Inbound bandwidth utilization"
  metric_id    = "metric-func:com.dynatrace.extension.snmp-generic-device.if.in.bandwidth"
  unit         = "Percent"
}
