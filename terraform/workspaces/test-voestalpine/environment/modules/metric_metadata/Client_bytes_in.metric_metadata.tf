resource "dynatrace_metric_metadata" "Client_bytes_in" {
  description        = "The number of bytes received by the system from client-side."
  display_name       = "Client bytes in"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.clientBytesIn"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Byte"
}
