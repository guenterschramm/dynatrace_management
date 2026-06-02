resource "dynatrace_metric_metadata" "Interface_bandwidth_utilization" {
  description  = "Bandwidth utilization on interface. Computed as sum of incoming and outgoing traffic divided by interface speed. Presented as percentage."
  display_name = "Interface bandwidth utilization"
  metric_id    = "metric-func:com.dynatrace.extension.snmp-generic-device.if.bandwidth"
  unit         = "Percent"
}
