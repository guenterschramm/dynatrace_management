resource "dynatrace_metric_metadata" "Server_bytes_out" {
  description        = "The number of bytes sent to server-side from the system."
  display_name       = "Server bytes out"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.serverBytesOut"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Byte"
}
