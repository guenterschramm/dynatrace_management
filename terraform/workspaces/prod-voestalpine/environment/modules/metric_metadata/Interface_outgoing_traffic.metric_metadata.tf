resource "dynatrace_metric_metadata" "Interface_outgoing_traffic" {
  description  = "Outgoing network traffic on interface in bits per second."
  display_name = "Interface outgoing traffic"
  metric_id    = "metric-func:com.dynatrace.extension.snmp-generic-cisco-device.if.out.octets.bitpersec"
  unit         = "BitPerSecond"
}
