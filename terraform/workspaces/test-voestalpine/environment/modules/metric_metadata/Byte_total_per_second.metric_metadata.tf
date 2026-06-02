resource "dynatrace_metric_metadata" "Byte_total_per_second" {
  description  = "Bytes Total/sec is the sum of Bytes Sent/sec and Bytes Received/sec. This is the total rate of bytes transferred by the Web service."
  display_name = "Byte total per second"
  metric_id    = "metric-iis.W3SVC_WebService.BytesTotalPersec"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Byte"
}
