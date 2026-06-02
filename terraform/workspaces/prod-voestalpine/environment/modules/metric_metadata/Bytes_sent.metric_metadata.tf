resource "dynatrace_metric_metadata" "Bytes_sent" {
  description  = "Bytes sent"
  display_name = "Bytes sent"
  metric_id    = "metric-tomcat.bytesSent.count"
  unit         = "Byte"
}
