resource "dynatrace_metric_metadata" "Server_bytes_in" {
  description        = "The number of bytes received by the system from server-side."
  display_name       = "Server bytes in"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.serverBytesIn"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Byte"
}
