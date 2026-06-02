resource "dynatrace_metric_metadata" "Bytes_recieved" {
  description  = "Bytes recieved"
  display_name = "Bytes recieved"
  metric_id    = "metric-tomcat.bytesReceived.count"
  unit         = "Byte"
}
