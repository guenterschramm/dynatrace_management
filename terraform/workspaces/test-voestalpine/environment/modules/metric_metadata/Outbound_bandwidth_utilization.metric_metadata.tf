resource "dynatrace_metric_metadata" "Outbound_bandwidth_utilization" {
  description  = "Outbound bandwidth utilization on interface. Computed as sum of outgoing traffic divided by interface speed. Presented as percentage."
  display_name = "Outbound bandwidth utilization"
  metric_id    = "metric-func:com.dynatrace.extension.snmp-generic-device.if.out.bandwidth"
  unit         = "Percent"
}
