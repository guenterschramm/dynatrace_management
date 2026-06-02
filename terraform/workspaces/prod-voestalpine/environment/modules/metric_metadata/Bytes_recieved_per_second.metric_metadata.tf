resource "dynatrace_metric_metadata" "Bytes_recieved_per_second" {
  description  = "Bytes recieved per second"
  display_name = "Bytes recieved per second"
  metric_id    = "metric-func:tomcat.bytesReceivedPerSecond"
  unit         = "BytePerSecond"
}
