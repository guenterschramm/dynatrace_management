resource "dynatrace_metric_metadata" "Interface_outgoing_traffic_high_capacity_1" {
  description  = "Outgoing network traffic on interface in bits per second. This metric uses high capacity octet metrics and should be used for highspeed devices."
  display_name = "Interface outgoing traffic (high capacity)"
  metric_id    = "metric-func:com.dynatrace.extension.snmp-generic-cisco-device.if.hc.out.octets.bitpersec"
  unit         = "BitPerSecond"
}
