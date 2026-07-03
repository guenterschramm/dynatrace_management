resource "dynatrace_metric_metadata" "Client_bytes_out" {
  description        = "The number of bytes sent to client-side from the system."
  display_name       = "Client bytes out"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.clientBytesOut"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Byte"
}
