resource "dynatrace_metric_metadata" "CRC_errors" {
  description  = "Number of input packets which had cyclic redundancy checksum errors"
  display_name = "CRC errors"
  metric_id    = "metric-com.dynatrace.extension.snmp-generic-cisco-device.if.in.crc_errors.count"
  unit         = "Count"
}
