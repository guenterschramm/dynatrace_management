resource "dynatrace_metric_metadata" "Bytes_sent_per_second" {
  description  = "Bytes sent per second"
  display_name = "Bytes sent per second"
  metric_id    = "metric-func:tomcat.bytesSentPerSecond"
  unit         = "BytePerSecond"
}
