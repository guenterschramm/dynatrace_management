resource "dynatrace_metric_metadata" "Interface_incoming_traffic_high_capacity" {
  description  = "Incoming network traffic on interface in bits per second. This metric uses high capacity octet metrics and should be used for highspeed devices."
  display_name = "Interface incoming traffic (high capacity)"
  metric_id    = "metric-func:com.dynatrace.extension.snmp-generic-device.if.hc.in.octets.bitpersec"
  unit         = "BitPerSecond"
}
