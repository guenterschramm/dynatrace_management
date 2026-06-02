resource "dynatrace_metric_metadata" "Interface_incoming_traffic" {
  description  = "Incoming network traffic on interface in bits per second."
  display_name = "Interface incoming traffic"
  metric_id    = "metric-func:com.dynatrace.extension.snmp-generic-cisco-device.if.in.octets.bitpersec"
  unit         = "BitPerSecond"
}
